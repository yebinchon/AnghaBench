
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct task_struct {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct audit_netlink_list {int q; int portid; int net; } ;
struct TYPE_2__ {int sk; int portid; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct task_struct*) ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 int PTR_ERR (struct task_struct*) ;
 int audit_filter_mutex ;
 int audit_list_rules (int,int *) ;
 int audit_send_list ;
 int get_net (struct net*) ;
 int kfree (struct audit_netlink_list*) ;
 struct audit_netlink_list* kmalloc (int,int ) ;
 struct task_struct* kthread_run (int ,struct audit_netlink_list*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int skb_queue_head_init (int *) ;
 int skb_queue_purge (int *) ;
 struct net* sock_net (int ) ;

int audit_list_rules_send(struct sk_buff *request_skb, int seq)
{
 u32 portid = NETLINK_CB(request_skb).portid;
 struct net *net = sock_net(NETLINK_CB(request_skb).sk);
 struct task_struct *tsk;
 struct audit_netlink_list *dest;
 int err = 0;







 dest = kmalloc(sizeof(struct audit_netlink_list), GFP_KERNEL);
 if (!dest)
  return -ENOMEM;
 dest->net = get_net(net);
 dest->portid = portid;
 skb_queue_head_init(&dest->q);

 mutex_lock(&audit_filter_mutex);
 audit_list_rules(seq, &dest->q);
 mutex_unlock(&audit_filter_mutex);

 tsk = kthread_run(audit_send_list, dest, "audit_send_list");
 if (IS_ERR(tsk)) {
  skb_queue_purge(&dest->q);
  kfree(dest);
  err = PTR_ERR(tsk);
 }

 return err;
}
