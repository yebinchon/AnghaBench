
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct net_device {int dummy; } ;
struct in6_addr {int * s6_addr16; } ;
struct TYPE_2__ {int lltype; } ;


 size_t LOWPAN_IPHC_DAM_01 ;
 size_t LOWPAN_IPHC_DAM_10 ;
 size_t LOWPAN_IPHC_DAM_11 ;

 TYPE_1__* lowpan_dev (struct net_device const*) ;
 int lowpan_iphc_addr_equal (struct net_device const*,int *,struct in6_addr const*,unsigned char const*) ;
 int lowpan_iphc_compress_802154_lladdr (struct in6_addr const*,unsigned char const*) ;
 size_t* lowpan_iphc_dam_to_sam_value ;
 scalar_t__ lowpan_is_iid_16_bit_compressable (struct in6_addr const*) ;
 int lowpan_push_hc_data (size_t**,int *,int) ;
 int pr_debug (char*) ;
 int raw_dump_inline (int *,char*,size_t*,int) ;

__attribute__((used)) static u8 lowpan_compress_addr_64(u8 **hc_ptr, const struct net_device *dev,
      const struct in6_addr *ipaddr,
      const unsigned char *lladdr, bool sam)
{
 u8 dam = LOWPAN_IPHC_DAM_01;

 switch (lowpan_dev(dev)->lltype) {
 case 128:
  if (lowpan_iphc_compress_802154_lladdr(ipaddr, lladdr)) {
   dam = LOWPAN_IPHC_DAM_11;
   pr_debug("address compression 0 bits\n");
   goto out;
  }
  break;
 default:
  if (lowpan_iphc_addr_equal(dev, ((void*)0), ipaddr, lladdr)) {
   dam = LOWPAN_IPHC_DAM_11;
   pr_debug("address compression 0 bits\n");
   goto out;
  }

  break;
 }

 if (lowpan_is_iid_16_bit_compressable(ipaddr)) {

  lowpan_push_hc_data(hc_ptr, &ipaddr->s6_addr16[7], 2);
  dam = LOWPAN_IPHC_DAM_10;
  raw_dump_inline(((void*)0), "Compressed ipv6 addr is (16 bits)",
    *hc_ptr - 2, 2);
  goto out;
 }


 lowpan_push_hc_data(hc_ptr, &ipaddr->s6_addr16[4], 8);
 raw_dump_inline(((void*)0), "Compressed ipv6 addr is (64 bits)",
   *hc_ptr - 8, 8);

out:

 if (sam)
  return lowpan_iphc_dam_to_sam_value[dam];
 else
  return dam;
}
