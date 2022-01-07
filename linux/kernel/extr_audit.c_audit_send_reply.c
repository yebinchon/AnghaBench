
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct audit_reply {struct sk_buff* skb; int portid; int net; } ;
struct TYPE_2__ {int portid; int sk; } ;


 int GFP_KERNEL ;
 int IS_ERR (struct task_struct*) ;
 TYPE_1__ NETLINK_CB (struct sk_buff*) ;
 struct sk_buff* audit_make_reply (int,int,int,int,void const*,int) ;
 int audit_send_reply_thread ;
 int get_net (struct net*) ;
 int kfree (struct audit_reply*) ;
 int kfree_skb (struct sk_buff*) ;
 struct audit_reply* kmalloc (int,int ) ;
 struct task_struct* kthread_run (int ,struct audit_reply*,char*) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static void audit_send_reply(struct sk_buff *request_skb, int seq, int type, int done,
        int multi, const void *payload, int size)
{
 struct net *net = sock_net(NETLINK_CB(request_skb).sk);
 struct sk_buff *skb;
 struct task_struct *tsk;
 struct audit_reply *reply = kmalloc(sizeof(struct audit_reply),
         GFP_KERNEL);

 if (!reply)
  return;

 skb = audit_make_reply(seq, type, done, multi, payload, size);
 if (!skb)
  goto out;

 reply->net = get_net(net);
 reply->portid = NETLINK_CB(request_skb).portid;
 reply->skb = skb;

 tsk = kthread_run(audit_send_reply_thread, reply, "audit_send_reply");
 if (!IS_ERR(tsk))
  return;
 kfree_skb(skb);
out:
 kfree(reply);
}
