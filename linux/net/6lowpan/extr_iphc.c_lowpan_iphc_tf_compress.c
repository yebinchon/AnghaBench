
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int tc ;
struct ipv6hdr {int* flow_lbl; } ;


 int LOWPAN_IPHC_TF_00 ;
 int LOWPAN_IPHC_TF_01 ;
 int LOWPAN_IPHC_TF_10 ;
 int LOWPAN_IPHC_TF_11 ;
 int lowpan_iphc_get_tc (struct ipv6hdr const*) ;
 scalar_t__ lowpan_iphc_is_flow_lbl_zero (struct ipv6hdr const*) ;
 int lowpan_push_hc_data (int**,int*,int) ;
 int memcpy (int*,int*,int) ;
 int pr_debug (char*,int) ;

__attribute__((used)) static u8 lowpan_iphc_tf_compress(u8 **hc_ptr, const struct ipv6hdr *hdr)
{

 u8 tc = lowpan_iphc_get_tc(hdr), tf[4], val;


 pr_debug("tc 0x%02x\n", tc);

 if (lowpan_iphc_is_flow_lbl_zero(hdr)) {
  if (!tc) {

   val = LOWPAN_IPHC_TF_11;
  } else {







   lowpan_push_hc_data(hc_ptr, &tc, sizeof(tc));
   val = LOWPAN_IPHC_TF_10;
  }
 } else {

  if (!(tc & 0x3f)) {
   memcpy(&tf[0], &hdr->flow_lbl[0], 3);

   tf[0] &= ~0xf0;

   tf[0] |= (tc & 0xc0);

   lowpan_push_hc_data(hc_ptr, tf, 3);
   val = LOWPAN_IPHC_TF_01;
  } else {
   memcpy(&tf[0], &tc, sizeof(tc));




   memcpy(&tf[1], &hdr->flow_lbl[0], 3);

   tf[1] &= ~0xf0;

   lowpan_push_hc_data(hc_ptr, tf, 4);
   val = LOWPAN_IPHC_TF_00;
  }
 }

 return val;
}
