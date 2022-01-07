
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SKB_GSO_IPXIP4 ;
 int SKB_GSO_IPXIP6 ;

__attribute__((used)) static inline int __tun_gso_type_mask(int encaps_af, int orig_af)
{
 switch (encaps_af) {
 case 129:
  return SKB_GSO_IPXIP4;
 case 128:
  return SKB_GSO_IPXIP6;
 default:
  return 0;
 }
}
