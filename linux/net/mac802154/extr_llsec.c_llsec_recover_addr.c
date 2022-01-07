
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ coord_shortaddr; int coord_hwaddr; int pan_id; } ;
struct mac802154_llsec {TYPE_1__ params; } ;
struct ieee802154_addr {scalar_t__ short_addr; int mode; int extended_addr; int pan_id; } ;
typedef scalar_t__ __le16 ;


 int EINVAL ;
 int IEEE802154_ADDR_BROADCAST ;
 int IEEE802154_ADDR_LONG ;
 int IEEE802154_ADDR_SHORT ;
 int IEEE802154_ADDR_UNDEF ;
 scalar_t__ cpu_to_le16 (int ) ;

__attribute__((used)) static int llsec_recover_addr(struct mac802154_llsec *sec,
         struct ieee802154_addr *addr)
{
 __le16 caddr = sec->params.coord_shortaddr;

 addr->pan_id = sec->params.pan_id;

 if (caddr == cpu_to_le16(IEEE802154_ADDR_BROADCAST)) {
  return -EINVAL;
 } else if (caddr == cpu_to_le16(IEEE802154_ADDR_UNDEF)) {
  addr->extended_addr = sec->params.coord_hwaddr;
  addr->mode = IEEE802154_ADDR_LONG;
 } else {
  addr->short_addr = sec->params.coord_shortaddr;
  addr->mode = IEEE802154_ADDR_SHORT;
 }

 return 0;
}
