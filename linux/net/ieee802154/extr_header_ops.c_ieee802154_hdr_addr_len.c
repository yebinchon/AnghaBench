
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int IEEE802154_ADDR_LEN ;




__attribute__((used)) static int ieee802154_hdr_addr_len(int mode, bool omit_pan)
{
 int pan_len = omit_pan ? 0 : 2;

 switch (mode) {
 case 129: return 0;
 case 128: return 2 + pan_len;
 case 130: return IEEE802154_ADDR_LEN + pan_len;
 default: return -EINVAL;
 }
}
