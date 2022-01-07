
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct genl_info {int dummy; } ;


 int GFP_ATOMIC ;
 int NLMSG_DEFAULT_SIZE ;
 void* genlmsg_put_reply (struct sk_buff*,struct genl_info*,int *,int,int ) ;
 int nl802154_family ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

struct sk_buff *ieee802154_nl_new_reply(struct genl_info *info,
     int flags, u8 req)
{
 void *hdr;
 struct sk_buff *msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_ATOMIC);

 if (!msg)
  return ((void*)0);

 hdr = genlmsg_put_reply(msg, info,
    &nl802154_family, flags, req);
 if (!hdr) {
  nlmsg_free(msg);
  return ((void*)0);
 }

 return msg;
}
