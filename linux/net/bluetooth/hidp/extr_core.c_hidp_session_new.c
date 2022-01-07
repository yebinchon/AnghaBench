
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct socket {int file; int sk; } ;
struct l2cap_conn {int dummy; } ;
struct TYPE_4__ {int list; int remove; int probe; } ;
struct hidp_session {int flags; int conn; struct socket* ctrl_sock; struct socket* intr_sock; int report_queue; int report_mutex; int timer; int dev_init; int idle_to; void* intr_mtu; void* ctrl_mtu; int intr_transmit; int ctrl_transmit; TYPE_1__ user; int bdaddr; int state_queue; int state; int ref; } ;
struct hidp_connadd_req {int flags; int idle_to; } ;
struct bt_sock {int dummy; } ;
typedef int bdaddr_t ;
struct TYPE_6__ {TYPE_2__* chan; } ;
struct TYPE_5__ {int imtu; int omtu; } ;


 int BIT (int ) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HIDP_BLUETOOTH_VENDOR_ID ;
 int HIDP_SESSION_IDLING ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int atomic_set (int *,int ) ;
 int bacpy (int *,int const*) ;
 struct bt_sock* bt_sk (int ) ;
 int get_file (int ) ;
 int hidp_idle_timeout ;
 int hidp_session_dev_init (struct hidp_session*,struct hidp_connadd_req const*) ;
 int hidp_session_dev_work ;
 int hidp_session_probe ;
 int hidp_session_remove ;
 int init_waitqueue_head (int *) ;
 int kfree (struct hidp_session*) ;
 int kref_init (int *) ;
 struct hidp_session* kzalloc (int,int ) ;
 int l2cap_conn_get (struct l2cap_conn*) ;
 int l2cap_conn_put (int ) ;
 TYPE_3__* l2cap_pi (struct bt_sock*) ;
 void* min_t (int ,int ,int ) ;
 int mutex_init (int *) ;
 int skb_queue_head_init (int *) ;
 int timer_setup (int *,int ,int ) ;
 int uint ;

__attribute__((used)) static int hidp_session_new(struct hidp_session **out, const bdaddr_t *bdaddr,
       struct socket *ctrl_sock,
       struct socket *intr_sock,
       const struct hidp_connadd_req *req,
       struct l2cap_conn *conn)
{
 struct hidp_session *session;
 int ret;
 struct bt_sock *ctrl, *intr;

 ctrl = bt_sk(ctrl_sock->sk);
 intr = bt_sk(intr_sock->sk);

 session = kzalloc(sizeof(*session), GFP_KERNEL);
 if (!session)
  return -ENOMEM;


 kref_init(&session->ref);
 atomic_set(&session->state, HIDP_SESSION_IDLING);
 init_waitqueue_head(&session->state_queue);
 session->flags = req->flags & BIT(HIDP_BLUETOOTH_VENDOR_ID);


 bacpy(&session->bdaddr, bdaddr);
 session->conn = l2cap_conn_get(conn);
 session->user.probe = hidp_session_probe;
 session->user.remove = hidp_session_remove;
 INIT_LIST_HEAD(&session->user.list);
 session->ctrl_sock = ctrl_sock;
 session->intr_sock = intr_sock;
 skb_queue_head_init(&session->ctrl_transmit);
 skb_queue_head_init(&session->intr_transmit);
 session->ctrl_mtu = min_t(uint, l2cap_pi(ctrl)->chan->omtu,
     l2cap_pi(ctrl)->chan->imtu);
 session->intr_mtu = min_t(uint, l2cap_pi(intr)->chan->omtu,
     l2cap_pi(intr)->chan->imtu);
 session->idle_to = req->idle_to;


 INIT_WORK(&session->dev_init, hidp_session_dev_work);
 timer_setup(&session->timer, hidp_idle_timeout, 0);


 mutex_init(&session->report_mutex);
 init_waitqueue_head(&session->report_queue);

 ret = hidp_session_dev_init(session, req);
 if (ret)
  goto err_free;

 get_file(session->intr_sock->file);
 get_file(session->ctrl_sock->file);
 *out = session;
 return 0;

err_free:
 l2cap_conn_put(session->conn);
 kfree(session);
 return ret;
}
