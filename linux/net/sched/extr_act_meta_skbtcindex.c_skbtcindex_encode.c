
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcf_meta_info {int dummy; } ;
struct sk_buff {int tc_index; } ;


 int ife_encode_meta_u16 (int ,void*,struct tcf_meta_info*) ;

__attribute__((used)) static int skbtcindex_encode(struct sk_buff *skb, void *skbdata,
        struct tcf_meta_info *e)
{
 u32 ifetc_index = skb->tc_index;

 return ife_encode_meta_u16(ifetc_index, skbdata, e);
}
