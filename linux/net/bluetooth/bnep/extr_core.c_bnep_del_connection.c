
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct bnep_session {TYPE_1__* sock; int terminate; } ;
struct bnep_conndel_req {int flags; int dst; } ;
struct TYPE_2__ {int sk; } ;


 int BT_DBG (char*) ;
 int EINVAL ;
 int ENOENT ;
 struct bnep_session* __bnep_get_session (int ) ;
 int atomic_inc (int *) ;
 int bnep_session_sem ;
 int down_read (int *) ;
 int sk_sleep (int ) ;
 int up_read (int *) ;
 int wake_up_interruptible (int ) ;

int bnep_del_connection(struct bnep_conndel_req *req)
{
 u32 valid_flags = 0;
 struct bnep_session *s;
 int err = 0;

 BT_DBG("");

 if (req->flags & ~valid_flags)
  return -EINVAL;

 down_read(&bnep_session_sem);

 s = __bnep_get_session(req->dst);
 if (s) {
  atomic_inc(&s->terminate);
  wake_up_interruptible(sk_sleep(s->sock->sk));
 } else
  err = -ENOENT;

 up_read(&bnep_session_sem);
 return err;
}
