
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_nl_compat_msg {struct sk_buff* rep; scalar_t__ rep_type; int rep_size; scalar_t__ req_type; int req; int req_size; } ;
struct tipc_nl_compat_cmd_dump {int (* header ) (struct tipc_nl_compat_msg*) ;} ;
struct sk_buff {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int TLV_CHECK_TYPE (int ,scalar_t__) ;
 int __tipc_nl_compat_dumpit (struct tipc_nl_compat_cmd_dump*,struct tipc_nl_compat_msg*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;
 int stub1 (struct tipc_nl_compat_msg*) ;
 struct sk_buff* tipc_tlv_alloc (int ) ;
 int tipc_tlv_init (struct sk_buff*,scalar_t__) ;

__attribute__((used)) static int tipc_nl_compat_dumpit(struct tipc_nl_compat_cmd_dump *cmd,
     struct tipc_nl_compat_msg *msg)
{
 int err;
 struct sk_buff *arg;

 if (msg->req_type && (!msg->req_size ||
         !TLV_CHECK_TYPE(msg->req, msg->req_type)))
  return -EINVAL;

 msg->rep = tipc_tlv_alloc(msg->rep_size);
 if (!msg->rep)
  return -ENOMEM;

 if (msg->rep_type)
  tipc_tlv_init(msg->rep, msg->rep_type);

 if (cmd->header) {
  err = (*cmd->header)(msg);
  if (err) {
   kfree_skb(msg->rep);
   msg->rep = ((void*)0);
   return err;
  }
 }

 arg = nlmsg_new(0, GFP_KERNEL);
 if (!arg) {
  kfree_skb(msg->rep);
  msg->rep = ((void*)0);
  return -ENOMEM;
 }

 err = __tipc_nl_compat_dumpit(cmd, msg, arg);
 if (err) {
  kfree_skb(msg->rep);
  msg->rep = ((void*)0);
 }
 kfree_skb(arg);

 return err;
}
