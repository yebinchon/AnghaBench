
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pktgen_dev {int stopped_at; int * skb; scalar_t__ running; int odevname; } ;
struct TYPE_2__ {int nr_frags; } ;


 int EINVAL ;
 int kfree_skb (int *) ;
 int ktime_get () ;
 int pr_warn (char*,int ) ;
 int show_results (struct pktgen_dev*,int) ;
 TYPE_1__* skb_shinfo (int *) ;

__attribute__((used)) static int pktgen_stop_device(struct pktgen_dev *pkt_dev)
{
 int nr_frags = pkt_dev->skb ? skb_shinfo(pkt_dev->skb)->nr_frags : -1;

 if (!pkt_dev->running) {
  pr_warn("interface: %s is already stopped\n",
   pkt_dev->odevname);
  return -EINVAL;
 }

 pkt_dev->running = 0;
 kfree_skb(pkt_dev->skb);
 pkt_dev->skb = ((void*)0);
 pkt_dev->stopped_at = ktime_get();

 show_results(pkt_dev, nr_frags);

 return 0;
}
