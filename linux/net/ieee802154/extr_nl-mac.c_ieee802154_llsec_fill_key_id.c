
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ mode; int extended_addr; int short_addr; int pan_id; } ;
struct ieee802154_llsec_key_id {scalar_t__ mode; scalar_t__ id; int extended_source; int short_source; TYPE_1__ device_addr; } ;


 int EMSGSIZE ;
 scalar_t__ IEEE802154_ADDR_LONG ;
 scalar_t__ IEEE802154_ADDR_SHORT ;
 int IEEE802154_ATTR_HW_ADDR ;
 int IEEE802154_ATTR_LLSEC_KEY_ID ;
 int IEEE802154_ATTR_LLSEC_KEY_MODE ;
 int IEEE802154_ATTR_LLSEC_KEY_SOURCE_EXTENDED ;
 int IEEE802154_ATTR_LLSEC_KEY_SOURCE_SHORT ;
 int IEEE802154_ATTR_PAD ;
 int IEEE802154_ATTR_PAN_ID ;
 int IEEE802154_ATTR_SHORT_ADDR ;
 scalar_t__ IEEE802154_SCF_KEY_HW_INDEX ;
 scalar_t__ IEEE802154_SCF_KEY_IMPLICIT ;
 scalar_t__ IEEE802154_SCF_KEY_SHORT_INDEX ;
 int le32_to_cpu (int ) ;
 scalar_t__ nla_put_hwaddr (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ nla_put_shortaddr (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,scalar_t__) ;

__attribute__((used)) static int
ieee802154_llsec_fill_key_id(struct sk_buff *msg,
        const struct ieee802154_llsec_key_id *desc)
{
 if (nla_put_u8(msg, IEEE802154_ATTR_LLSEC_KEY_MODE, desc->mode))
  return -EMSGSIZE;

 if (desc->mode == IEEE802154_SCF_KEY_IMPLICIT) {
  if (nla_put_shortaddr(msg, IEEE802154_ATTR_PAN_ID,
          desc->device_addr.pan_id))
   return -EMSGSIZE;

  if (desc->device_addr.mode == IEEE802154_ADDR_SHORT &&
      nla_put_shortaddr(msg, IEEE802154_ATTR_SHORT_ADDR,
          desc->device_addr.short_addr))
   return -EMSGSIZE;

  if (desc->device_addr.mode == IEEE802154_ADDR_LONG &&
      nla_put_hwaddr(msg, IEEE802154_ATTR_HW_ADDR,
       desc->device_addr.extended_addr,
       IEEE802154_ATTR_PAD))
   return -EMSGSIZE;
 }

 if (desc->mode != IEEE802154_SCF_KEY_IMPLICIT &&
     nla_put_u8(msg, IEEE802154_ATTR_LLSEC_KEY_ID, desc->id))
  return -EMSGSIZE;

 if (desc->mode == IEEE802154_SCF_KEY_SHORT_INDEX &&
     nla_put_u32(msg, IEEE802154_ATTR_LLSEC_KEY_SOURCE_SHORT,
   le32_to_cpu(desc->short_source)))
  return -EMSGSIZE;

 if (desc->mode == IEEE802154_SCF_KEY_HW_INDEX &&
     nla_put_hwaddr(msg, IEEE802154_ATTR_LLSEC_KEY_SOURCE_EXTENDED,
      desc->extended_source, IEEE802154_ATTR_PAD))
  return -EMSGSIZE;

 return 0;
}
