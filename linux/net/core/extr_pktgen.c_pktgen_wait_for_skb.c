
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pktgen_dev {int idle_acc; TYPE_1__* skb; } ;
typedef int ktime_t ;
struct TYPE_2__ {int users; } ;


 int cpu_relax () ;
 int current ;
 int ktime_get () ;
 int ktime_sub (int ,int ) ;
 scalar_t__ ktime_to_ns (int ) ;
 scalar_t__ need_resched () ;
 int pktgen_resched (struct pktgen_dev*) ;
 int refcount_read (int *) ;
 scalar_t__ signal_pending (int ) ;

__attribute__((used)) static void pktgen_wait_for_skb(struct pktgen_dev *pkt_dev)
{
 ktime_t idle_start = ktime_get();

 while (refcount_read(&(pkt_dev->skb->users)) != 1) {
  if (signal_pending(current))
   break;

  if (need_resched())
   pktgen_resched(pkt_dev);
  else
   cpu_relax();
 }
 pkt_dev->idle_acc += ktime_to_ns(ktime_sub(ktime_get(), idle_start));
}
