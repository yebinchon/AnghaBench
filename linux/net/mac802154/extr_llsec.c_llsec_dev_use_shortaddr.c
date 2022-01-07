
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __le16 ;


 int IEEE802154_ADDR_UNDEF ;
 scalar_t__ cpu_to_le16 (int) ;

__attribute__((used)) static bool llsec_dev_use_shortaddr(__le16 short_addr)
{
 return short_addr != cpu_to_le16(IEEE802154_ADDR_UNDEF) &&
  short_addr != cpu_to_le16(0xffff);
}
