
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct socket {int sk; } ;
struct cmtp_session {scalar_t__ state; int flags; struct socket* sock; int terminate; int task; int num; int ** reassembly; int transmit; int applications; int msgnum; int wait; int name; int bdaddr; int mtu; } ;
struct cmtp_connadd_req {int flags; } ;
struct TYPE_4__ {TYPE_1__* chan; } ;
struct TYPE_3__ {int imtu; int omtu; int dst; } ;


 int BIT (int ) ;
 scalar_t__ BT_CONFIG ;
 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,...) ;
 int CMTP_INITIAL_MSGNUM ;
 int CMTP_LOOPBACK ;
 int EBADFD ;
 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 struct cmtp_session* __cmtp_get_session (int *) ;
 int __cmtp_link_session (struct cmtp_session*) ;
 int __cmtp_unlink_session (struct cmtp_session*) ;
 int __module_get (int ) ;
 int atomic_inc (int *) ;
 int bacpy (int *,int *) ;
 int cmtp_attach_device (struct cmtp_session*) ;
 int cmtp_session ;
 int cmtp_session_sem ;
 int down_write (int *) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct cmtp_session*) ;
 int kthread_run (int ,struct cmtp_session*,char*,int ) ;
 struct cmtp_session* kzalloc (int,int ) ;
 int l2cap_is_socket (struct socket*) ;
 TYPE_2__* l2cap_pi (int ) ;
 int min_t (int ,int ,int ) ;
 int module_put (int ) ;
 int sk_sleep (int ) ;
 int skb_queue_head_init (int *) ;
 int sprintf (int ,char*,int *) ;
 int uint ;
 int up_write (int *) ;
 int wake_up_interruptible (int ) ;

int cmtp_add_connection(struct cmtp_connadd_req *req, struct socket *sock)
{
 u32 valid_flags = BIT(CMTP_LOOPBACK);
 struct cmtp_session *session, *s;
 int i, err;

 BT_DBG("");

 if (!l2cap_is_socket(sock))
  return -EBADFD;

 if (req->flags & ~valid_flags)
  return -EINVAL;

 session = kzalloc(sizeof(struct cmtp_session), GFP_KERNEL);
 if (!session)
  return -ENOMEM;

 down_write(&cmtp_session_sem);

 s = __cmtp_get_session(&l2cap_pi(sock->sk)->chan->dst);
 if (s && s->state == BT_CONNECTED) {
  err = -EEXIST;
  goto failed;
 }

 bacpy(&session->bdaddr, &l2cap_pi(sock->sk)->chan->dst);

 session->mtu = min_t(uint, l2cap_pi(sock->sk)->chan->omtu,
     l2cap_pi(sock->sk)->chan->imtu);

 BT_DBG("mtu %d", session->mtu);

 sprintf(session->name, "%pMR", &session->bdaddr);

 session->sock = sock;
 session->state = BT_CONFIG;

 init_waitqueue_head(&session->wait);

 session->msgnum = CMTP_INITIAL_MSGNUM;

 INIT_LIST_HEAD(&session->applications);

 skb_queue_head_init(&session->transmit);

 for (i = 0; i < 16; i++)
  session->reassembly[i] = ((void*)0);

 session->flags = req->flags;

 __cmtp_link_session(session);

 __module_get(THIS_MODULE);
 session->task = kthread_run(cmtp_session, session, "kcmtpd_ctr_%d",
        session->num);
 if (IS_ERR(session->task)) {
  module_put(THIS_MODULE);
  err = PTR_ERR(session->task);
  goto unlink;
 }

 if (!(session->flags & BIT(CMTP_LOOPBACK))) {
  err = cmtp_attach_device(session);
  if (err < 0) {
   atomic_inc(&session->terminate);
   wake_up_interruptible(sk_sleep(session->sock->sk));
   up_write(&cmtp_session_sem);
   return err;
  }
 }

 up_write(&cmtp_session_sem);
 return 0;

unlink:
 __cmtp_unlink_session(session);

failed:
 up_write(&cmtp_session_sem);
 kfree(session);
 return err;
}
