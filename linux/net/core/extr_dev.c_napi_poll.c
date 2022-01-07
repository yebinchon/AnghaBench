
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct napi_struct {int weight; int (* poll ) (struct napi_struct*,int) ;int poll_list; TYPE_1__* dev; scalar_t__ gro_bitmask; int state; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {char* name; } ;


 int HZ ;
 int NAPI_STATE_SCHED ;
 int WARN_ON_ONCE (int) ;
 int gro_normal_list (struct napi_struct*) ;
 scalar_t__ likely (int) ;
 int list_add_tail (int *,struct list_head*) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int napi_complete (struct napi_struct*) ;
 int napi_disable_pending (struct napi_struct*) ;
 int napi_gro_flush (struct napi_struct*,int) ;
 void* netpoll_poll_lock (struct napi_struct*) ;
 int netpoll_poll_unlock (void*) ;
 int pr_warn_once (char*,char*) ;
 int stub1 (struct napi_struct*,int) ;
 scalar_t__ test_bit (int ,int *) ;
 int trace_napi_poll (struct napi_struct*,int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int napi_poll(struct napi_struct *n, struct list_head *repoll)
{
 void *have;
 int work, weight;

 list_del_init(&n->poll_list);

 have = netpoll_poll_lock(n);

 weight = n->weight;







 work = 0;
 if (test_bit(NAPI_STATE_SCHED, &n->state)) {
  work = n->poll(n, weight);
  trace_napi_poll(n, work, weight);
 }

 WARN_ON_ONCE(work > weight);

 if (likely(work < weight))
  goto out_unlock;






 if (unlikely(napi_disable_pending(n))) {
  napi_complete(n);
  goto out_unlock;
 }

 gro_normal_list(n);

 if (n->gro_bitmask) {



  napi_gro_flush(n, HZ >= 1000);
 }




 if (unlikely(!list_empty(&n->poll_list))) {
  pr_warn_once("%s: Budget exhausted after napi rescheduled\n",
        n->dev ? n->dev->name : "backlog");
  goto out_unlock;
 }

 list_add_tail(&n->poll_list, repoll);

out_unlock:
 netpoll_poll_unlock(have);

 return work;
}
