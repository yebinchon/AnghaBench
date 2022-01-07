
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;


 int GFP_ATOMIC ;
 void* genlmsg_data (int ) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_multicast (int *,struct sk_buff*,int ,unsigned int,int ) ;
 int nl802154_family ;
 int nlmsg_data (struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_hdr (struct sk_buff*) ;

int ieee802154_nl_mcast(struct sk_buff *msg, unsigned int group)
{
 struct nlmsghdr *nlh = nlmsg_hdr(msg);
 void *hdr = genlmsg_data(nlmsg_data(nlh));

 genlmsg_end(msg, hdr);

 return genlmsg_multicast(&nl802154_family, msg, 0, group, GFP_ATOMIC);
}
