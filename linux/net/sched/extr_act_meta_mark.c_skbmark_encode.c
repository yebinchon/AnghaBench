
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcf_meta_info {int dummy; } ;
struct sk_buff {int mark; } ;


 int ife_encode_meta_u32 (int ,void*,struct tcf_meta_info*) ;

__attribute__((used)) static int skbmark_encode(struct sk_buff *skb, void *skbdata,
     struct tcf_meta_info *e)
{
 u32 ifemark = skb->mark;

 return ife_encode_meta_u32(ifemark, skbdata, e);
}
