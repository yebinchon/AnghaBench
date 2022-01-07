
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cmtp_session {TYPE_1__* sock; int terminate; int transmit; } ;
struct cmtp_conndel_req {int flags; int bdaddr; } ;
struct TYPE_2__ {int sk; } ;


 int BT_DBG (char*) ;
 int EINVAL ;
 int ENOENT ;
 struct cmtp_session* __cmtp_get_session (int *) ;
 int atomic_inc (int *) ;
 int cmtp_session_sem ;
 int down_read (int *) ;
 int sk_sleep (int ) ;
 int skb_queue_purge (int *) ;
 int up_read (int *) ;
 int wake_up_interruptible (int ) ;

int cmtp_del_connection(struct cmtp_conndel_req *req)
{
 u32 valid_flags = 0;
 struct cmtp_session *session;
 int err = 0;

 BT_DBG("");

 if (req->flags & ~valid_flags)
  return -EINVAL;

 down_read(&cmtp_session_sem);

 session = __cmtp_get_session(&req->bdaddr);
 if (session) {

  skb_queue_purge(&session->transmit);


  atomic_inc(&session->terminate);





  wake_up_interruptible(sk_sleep(session->sock->sk));
 } else
  err = -ENOENT;

 up_read(&cmtp_session_sem);
 return err;
}
