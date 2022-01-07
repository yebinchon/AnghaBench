
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;


 int ND_OPT_REDIRECT_HDR ;
 int memset (int *,int ,int) ;
 int skb_copy_bits (struct sk_buff*,int ,int *,int) ;
 int skb_network_offset (struct sk_buff*) ;
 int * skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void ndisc_fill_redirect_hdr_option(struct sk_buff *skb,
        struct sk_buff *orig_skb,
        int rd_len)
{
 u8 *opt = skb_put(skb, rd_len);

 memset(opt, 0, 8);
 *(opt++) = ND_OPT_REDIRECT_HDR;
 *(opt++) = (rd_len >> 3);
 opt += 6;

 skb_copy_bits(orig_skb, skb_network_offset(orig_skb), opt,
        rd_len - 8);
}
