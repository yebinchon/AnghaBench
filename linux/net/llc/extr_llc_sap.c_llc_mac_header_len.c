
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ethhdr {int dummy; } ;





__attribute__((used)) static int llc_mac_header_len(unsigned short devtype)
{
 switch (devtype) {
 case 129:
 case 128:
  return sizeof(struct ethhdr);
 }
 return 0;
}
