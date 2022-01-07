
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee802154_addr {int mode; int extended_addr; int short_addr; int pan_id; } ;


 int EINVAL ;
 int IEEE802154_ADDR_LEN ;

 int IEEE802154_ADDR_NONE ;

 int memcpy (int *,int *,int) ;

__attribute__((used)) static int
ieee802154_hdr_push_addr(u8 *buf, const struct ieee802154_addr *addr,
    bool omit_pan)
{
 int pos = 0;

 if (addr->mode == IEEE802154_ADDR_NONE)
  return 0;

 if (!omit_pan) {
  memcpy(buf + pos, &addr->pan_id, 2);
  pos += 2;
 }

 switch (addr->mode) {
 case 128:
  memcpy(buf + pos, &addr->short_addr, 2);
  pos += 2;
  break;

 case 129:
  memcpy(buf + pos, &addr->extended_addr, IEEE802154_ADDR_LEN);
  pos += IEEE802154_ADDR_LEN;
  break;

 default:
  return -EINVAL;
 }

 return pos;
}
