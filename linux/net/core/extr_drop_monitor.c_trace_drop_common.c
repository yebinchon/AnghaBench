
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct TYPE_5__ {scalar_t__ expires; } ;
struct per_cpu_dm_data {int lock; TYPE_2__ send_timer; struct sk_buff* skb; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int nla_len; } ;
struct net_dm_drop_point {int dummy; } ;
struct net_dm_alert_msg {int entries; TYPE_1__* points; } ;
struct TYPE_4__ {int count; int pc; } ;


 int HZ ;
 scalar_t__ NLA_ALIGN (int) ;
 int __nla_reserve_nohdr (struct sk_buff*,int) ;
 int add_timer (TYPE_2__*) ;
 int dm_cpu_data ;
 int dm_delay ;
 int dm_hit_limit ;
 struct nlattr* genlmsg_data (int ) ;
 scalar_t__ jiffies ;
 int local_irq_save (unsigned long) ;
 int memcmp (void**,int ,int) ;
 int memcpy (int ,void**,int) ;
 struct net_dm_alert_msg* nla_data (struct nlattr*) ;
 int nlmsg_data (struct nlmsghdr*) ;
 int spin_lock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct per_cpu_dm_data* this_cpu_ptr (int *) ;
 int timer_pending (TYPE_2__*) ;

__attribute__((used)) static void trace_drop_common(struct sk_buff *skb, void *location)
{
 struct net_dm_alert_msg *msg;
 struct nlmsghdr *nlh;
 struct nlattr *nla;
 int i;
 struct sk_buff *dskb;
 struct per_cpu_dm_data *data;
 unsigned long flags;

 local_irq_save(flags);
 data = this_cpu_ptr(&dm_cpu_data);
 spin_lock(&data->lock);
 dskb = data->skb;

 if (!dskb)
  goto out;

 nlh = (struct nlmsghdr *)dskb->data;
 nla = genlmsg_data(nlmsg_data(nlh));
 msg = nla_data(nla);
 for (i = 0; i < msg->entries; i++) {
  if (!memcmp(&location, msg->points[i].pc, sizeof(void *))) {
   msg->points[i].count++;
   goto out;
  }
 }
 if (msg->entries == dm_hit_limit)
  goto out;



 __nla_reserve_nohdr(dskb, sizeof(struct net_dm_drop_point));
 nla->nla_len += NLA_ALIGN(sizeof(struct net_dm_drop_point));
 memcpy(msg->points[msg->entries].pc, &location, sizeof(void *));
 msg->points[msg->entries].count = 1;
 msg->entries++;

 if (!timer_pending(&data->send_timer)) {
  data->send_timer.expires = jiffies + dm_delay * HZ;
  add_timer(&data->send_timer);
 }

out:
 spin_unlock_irqrestore(&data->lock, flags);
}
