
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int abort_parser; int read_sock_done; scalar_t__ parse_msg; scalar_t__ rcv_msg; int unlock; int lock; } ;
struct strparser {int work; int msg_timer_work; TYPE_1__ cb; struct sock* sk; } ;
struct strp_callbacks {scalar_t__ abort_parser; scalar_t__ read_sock_done; scalar_t__ parse_msg; scalar_t__ rcv_msg; scalar_t__ unlock; scalar_t__ lock; } ;
struct sock {int dummy; } ;


 int EINVAL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 int default_read_sock_done ;
 int memset (struct strparser*,int ,int) ;
 int strp_abort_strp ;
 int strp_msg_timeout ;
 int strp_sock_lock ;
 int strp_sock_unlock ;
 int strp_work ;

int strp_init(struct strparser *strp, struct sock *sk,
       const struct strp_callbacks *cb)
{

 if (!cb || !cb->rcv_msg || !cb->parse_msg)
  return -EINVAL;
 if (!sk) {
  if (!cb->lock || !cb->unlock)
   return -EINVAL;
 }

 memset(strp, 0, sizeof(*strp));

 strp->sk = sk;

 strp->cb.lock = cb->lock ? : strp_sock_lock;
 strp->cb.unlock = cb->unlock ? : strp_sock_unlock;
 strp->cb.rcv_msg = cb->rcv_msg;
 strp->cb.parse_msg = cb->parse_msg;
 strp->cb.read_sock_done = cb->read_sock_done ? : default_read_sock_done;
 strp->cb.abort_parser = cb->abort_parser ? : strp_abort_strp;

 INIT_DELAYED_WORK(&strp->msg_timer_work, strp_msg_timeout);
 INIT_WORK(&strp->work, strp_work);

 return 0;
}
