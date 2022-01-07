
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_plug_qopt {int action; int limit; } ;
struct plug_sched_data {int unplug_indefinite; int throttled; int limit; int pkts_current_epoch; int pkts_last_epoch; int pkts_to_release; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct Qdisc {int dev_queue; } ;


 int EINVAL ;




 int netif_schedule_queue (int ) ;
 struct tc_plug_qopt* nla_data (struct nlattr*) ;
 int nla_len (struct nlattr*) ;
 struct plug_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static int plug_change(struct Qdisc *sch, struct nlattr *opt,
         struct netlink_ext_ack *extack)
{
 struct plug_sched_data *q = qdisc_priv(sch);
 struct tc_plug_qopt *msg;

 if (opt == ((void*)0))
  return -EINVAL;

 msg = nla_data(opt);
 if (nla_len(opt) < sizeof(*msg))
  return -EINVAL;

 switch (msg->action) {
 case 131:

  q->pkts_last_epoch = q->pkts_current_epoch;
  q->pkts_current_epoch = 0;
  if (q->unplug_indefinite)
   q->throttled = 1;
  q->unplug_indefinite = 0;
  break;
 case 128:



  q->pkts_to_release += q->pkts_last_epoch;
  q->pkts_last_epoch = 0;
  q->throttled = 0;
  netif_schedule_queue(sch->dev_queue);
  break;
 case 129:
  q->unplug_indefinite = 1;
  q->pkts_to_release = 0;
  q->pkts_last_epoch = 0;
  q->pkts_current_epoch = 0;
  q->throttled = 0;
  netif_schedule_queue(sch->dev_queue);
  break;
 case 130:

  q->limit = msg->limit;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
