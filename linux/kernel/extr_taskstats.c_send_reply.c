
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct genlmsghdr {int dummy; } ;
struct genl_info {int dummy; } ;


 void* genlmsg_data (struct genlmsghdr*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 struct genlmsghdr* nlmsg_data (int ) ;
 int nlmsg_hdr (struct sk_buff*) ;

__attribute__((used)) static int send_reply(struct sk_buff *skb, struct genl_info *info)
{
 struct genlmsghdr *genlhdr = nlmsg_data(nlmsg_hdr(skb));
 void *reply = genlmsg_data(genlhdr);

 genlmsg_end(skb, reply);

 return genlmsg_reply(skb, info);
}
