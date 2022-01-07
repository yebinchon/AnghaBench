
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tc_fifo_qopt {int limit; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct Qdisc {int limit; int flags; int * ops; } ;
struct TYPE_3__ {int tx_queue_len; } ;


 int EINVAL ;
 int TCQ_F_CAN_BYPASS ;
 int bfifo_qdisc_ops ;
 struct tc_fifo_qopt* nla_data (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 int psched_mtu (TYPE_1__*) ;
 TYPE_1__* qdisc_dev (struct Qdisc*) ;

__attribute__((used)) static int fifo_init(struct Qdisc *sch, struct nlattr *opt,
       struct netlink_ext_ack *extack)
{
 bool bypass;
 bool is_bfifo = sch->ops == &bfifo_qdisc_ops;

 if (opt == ((void*)0)) {
  u32 limit = qdisc_dev(sch)->tx_queue_len;

  if (is_bfifo)
   limit *= psched_mtu(qdisc_dev(sch));

  sch->limit = limit;
 } else {
  struct tc_fifo_qopt *ctl = nla_data(opt);

  if (nla_len(opt) < sizeof(*ctl))
   return -EINVAL;

  sch->limit = ctl->limit;
 }

 if (is_bfifo)
  bypass = sch->limit >= psched_mtu(qdisc_dev(sch));
 else
  bypass = sch->limit >= 1;

 if (bypass)
  sch->flags |= TCQ_F_CAN_BYPASS;
 else
  sch->flags &= ~TCQ_F_CAN_BYPASS;
 return 0;
}
