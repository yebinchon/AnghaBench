
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct genl_info {int dummy; } ;


 void* genlmsg_data (int ) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 int nlmsg_data (struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_hdr (struct sk_buff*) ;

int ieee802154_nl_reply(struct sk_buff *msg, struct genl_info *info)
{
 struct nlmsghdr *nlh = nlmsg_hdr(msg);
 void *hdr = genlmsg_data(nlmsg_data(nlh));

 genlmsg_end(msg, hdr);

 return genlmsg_reply(msg, info);
}
