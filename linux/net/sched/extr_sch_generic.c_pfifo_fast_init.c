
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skb_array {int dummy; } ;
struct pfifo_fast_priv {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct Qdisc {int flags; } ;
struct TYPE_2__ {unsigned int tx_queue_len; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PFIFO_FAST_BANDS ;
 int TCQ_F_CAN_BYPASS ;
 struct skb_array* band2list (struct pfifo_fast_priv*,int) ;
 TYPE_1__* qdisc_dev (struct Qdisc*) ;
 struct pfifo_fast_priv* qdisc_priv (struct Qdisc*) ;
 int skb_array_init (struct skb_array*,unsigned int,int ) ;

__attribute__((used)) static int pfifo_fast_init(struct Qdisc *qdisc, struct nlattr *opt,
      struct netlink_ext_ack *extack)
{
 unsigned int qlen = qdisc_dev(qdisc)->tx_queue_len;
 struct pfifo_fast_priv *priv = qdisc_priv(qdisc);
 int prio;


 if (!qlen)
  return -EINVAL;

 for (prio = 0; prio < PFIFO_FAST_BANDS; prio++) {
  struct skb_array *q = band2list(priv, prio);
  int err;

  err = skb_array_init(q, qlen, GFP_KERNEL);
  if (err)
   return -ENOMEM;
 }


 qdisc->flags |= TCQ_F_CAN_BYPASS;
 return 0;
}
