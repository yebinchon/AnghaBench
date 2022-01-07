
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int tmp ;
struct udphdr {int source; int dest; int check; } ;
struct sk_buff {int dummy; } ;


 int LOWPAN_NHC_UDP_4BIT_MASK ;
 int LOWPAN_NHC_UDP_4BIT_PORT ;
 int LOWPAN_NHC_UDP_8BIT_MASK ;
 int LOWPAN_NHC_UDP_8BIT_PORT ;
 int LOWPAN_NHC_UDP_CS_P_00 ;
 int LOWPAN_NHC_UDP_CS_P_01 ;
 int LOWPAN_NHC_UDP_CS_P_10 ;
 int LOWPAN_NHC_UDP_CS_P_11 ;
 int lowpan_push_hc_data (int**,int*,int) ;
 int ntohs (int) ;
 int pr_debug (char*) ;
 struct udphdr* udp_hdr (struct sk_buff*) ;

__attribute__((used)) static int udp_compress(struct sk_buff *skb, u8 **hc_ptr)
{
 const struct udphdr *uh = udp_hdr(skb);
 u8 tmp;

 if (((ntohs(uh->source) & LOWPAN_NHC_UDP_4BIT_MASK) ==
      LOWPAN_NHC_UDP_4BIT_PORT) &&
     ((ntohs(uh->dest) & LOWPAN_NHC_UDP_4BIT_MASK) ==
      LOWPAN_NHC_UDP_4BIT_PORT)) {
  pr_debug("UDP header: both ports compression to 4 bits\n");

  tmp = LOWPAN_NHC_UDP_CS_P_11;
  lowpan_push_hc_data(hc_ptr, &tmp, sizeof(tmp));

  tmp = ntohs(uh->dest) - LOWPAN_NHC_UDP_4BIT_PORT +
        ((ntohs(uh->source) - LOWPAN_NHC_UDP_4BIT_PORT) << 4);
  lowpan_push_hc_data(hc_ptr, &tmp, sizeof(tmp));
 } else if ((ntohs(uh->dest) & LOWPAN_NHC_UDP_8BIT_MASK) ==
   LOWPAN_NHC_UDP_8BIT_PORT) {
  pr_debug("UDP header: remove 8 bits of dest\n");

  tmp = LOWPAN_NHC_UDP_CS_P_01;
  lowpan_push_hc_data(hc_ptr, &tmp, sizeof(tmp));

  lowpan_push_hc_data(hc_ptr, &uh->source, sizeof(uh->source));

  tmp = ntohs(uh->dest) - LOWPAN_NHC_UDP_8BIT_PORT;
  lowpan_push_hc_data(hc_ptr, &tmp, sizeof(tmp));
 } else if ((ntohs(uh->source) & LOWPAN_NHC_UDP_8BIT_MASK) ==
   LOWPAN_NHC_UDP_8BIT_PORT) {
  pr_debug("UDP header: remove 8 bits of source\n");

  tmp = LOWPAN_NHC_UDP_CS_P_10;
  lowpan_push_hc_data(hc_ptr, &tmp, sizeof(tmp));

  tmp = ntohs(uh->source) - LOWPAN_NHC_UDP_8BIT_PORT;
  lowpan_push_hc_data(hc_ptr, &tmp, sizeof(tmp));

  lowpan_push_hc_data(hc_ptr, &uh->dest, sizeof(uh->dest));
 } else {
  pr_debug("UDP header: can't compress\n");

  tmp = LOWPAN_NHC_UDP_CS_P_00;
  lowpan_push_hc_data(hc_ptr, &tmp, sizeof(tmp));

  lowpan_push_hc_data(hc_ptr, &uh->source, sizeof(uh->source));

  lowpan_push_hc_data(hc_ptr, &uh->dest, sizeof(uh->dest));
 }


 lowpan_push_hc_data(hc_ptr, &uh->check, sizeof(uh->check));

 return 0;
}
