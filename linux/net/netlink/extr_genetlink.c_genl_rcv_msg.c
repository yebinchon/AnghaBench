
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_type; } ;
struct netlink_ext_ack {int dummy; } ;
struct genl_family {int parallel_ops; } ;


 int ENOENT ;
 struct genl_family* genl_family_find_byid (int ) ;
 int genl_family_rcv_msg (struct genl_family const*,struct sk_buff*,struct nlmsghdr*,struct netlink_ext_ack*) ;
 int genl_lock () ;
 int genl_unlock () ;

__attribute__((used)) static int genl_rcv_msg(struct sk_buff *skb, struct nlmsghdr *nlh,
   struct netlink_ext_ack *extack)
{
 const struct genl_family *family;
 int err;

 family = genl_family_find_byid(nlh->nlmsg_type);
 if (family == ((void*)0))
  return -ENOENT;

 if (!family->parallel_ops)
  genl_lock();

 err = genl_family_rcv_msg(family, skb, nlh, extack);

 if (!family->parallel_ops)
  genl_unlock();

 return err;
}
