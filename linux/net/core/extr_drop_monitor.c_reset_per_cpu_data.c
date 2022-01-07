
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct per_cpu_dm_data {int lock; int skb; int send_timer; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_dm_drop_point {int dummy; } ;
struct net_dm_alert_msg {int dummy; } ;
struct genlmsghdr {int dummy; } ;


 int GFP_KERNEL ;
 int HZ ;
 int NET_DM_CMD_ALERT ;
 int NLA_UNSPEC ;
 int dm_hit_limit ;
 int genlmsg_data (struct genlmsghdr*) ;
 int genlmsg_end (struct sk_buff*,int ) ;
 struct sk_buff* genlmsg_new (size_t,int ) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 scalar_t__ jiffies ;
 int memset (struct net_dm_alert_msg*,int ,size_t) ;
 int mod_timer (int *,scalar_t__) ;
 int net_drop_monitor_family ;
 struct net_dm_alert_msg* nla_data (struct nlattr*) ;
 struct nlattr* nla_reserve (struct sk_buff*,int ,int) ;
 scalar_t__ nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_free (struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int swap (int ,struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *reset_per_cpu_data(struct per_cpu_dm_data *data)
{
 size_t al;
 struct net_dm_alert_msg *msg;
 struct nlattr *nla;
 struct sk_buff *skb;
 unsigned long flags;
 void *msg_header;

 al = sizeof(struct net_dm_alert_msg);
 al += dm_hit_limit * sizeof(struct net_dm_drop_point);
 al += sizeof(struct nlattr);

 skb = genlmsg_new(al, GFP_KERNEL);

 if (!skb)
  goto err;

 msg_header = genlmsg_put(skb, 0, 0, &net_drop_monitor_family,
     0, NET_DM_CMD_ALERT);
 if (!msg_header) {
  nlmsg_free(skb);
  skb = ((void*)0);
  goto err;
 }
 nla = nla_reserve(skb, NLA_UNSPEC,
     sizeof(struct net_dm_alert_msg));
 if (!nla) {
  nlmsg_free(skb);
  skb = ((void*)0);
  goto err;
 }
 msg = nla_data(nla);
 memset(msg, 0, al);
 goto out;

err:
 mod_timer(&data->send_timer, jiffies + HZ / 10);
out:
 spin_lock_irqsave(&data->lock, flags);
 swap(data->skb, skb);
 spin_unlock_irqrestore(&data->lock, flags);

 if (skb) {
  struct nlmsghdr *nlh = (struct nlmsghdr *)skb->data;
  struct genlmsghdr *gnlh = (struct genlmsghdr *)nlmsg_data(nlh);

  genlmsg_end(skb, genlmsg_data(gnlh));
 }

 return skb;
}
