
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int fl; } ;
struct TYPE_8__ {TYPE_3__ lock; } ;
struct TYPE_5__ {int fl; } ;
struct TYPE_6__ {TYPE_1__ lock; } ;
struct nlm_rqst {int a_host; TYPE_4__ a_res; TYPE_2__ a_args; int a_count; } ;
struct nlm_host {int dummy; } ;


 int GFP_KERNEL ;
 int HZ ;
 struct nlm_rqst* kzalloc (int,int ) ;
 int locks_init_lock (int *) ;
 int nlm_get_host (struct nlm_host*) ;
 int printk (char*) ;
 int refcount_set (int *,int) ;
 int schedule_timeout_interruptible (int) ;
 scalar_t__ signalled () ;

struct nlm_rqst *nlm_alloc_call(struct nlm_host *host)
{
 struct nlm_rqst *call;

 for(;;) {
  call = kzalloc(sizeof(*call), GFP_KERNEL);
  if (call != ((void*)0)) {
   refcount_set(&call->a_count, 1);
   locks_init_lock(&call->a_args.lock.fl);
   locks_init_lock(&call->a_res.lock.fl);
   call->a_host = nlm_get_host(host);
   return call;
  }
  if (signalled())
   break;
  printk("nlm_alloc_call: failed, waiting for memory\n");
  schedule_timeout_interruptible(5*HZ);
 }
 return ((void*)0);
}
