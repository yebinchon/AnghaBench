
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_meta_info {int dummy; } ;
struct sk_buff {int mark; } ;


 int ife_check_meta_u32 (int ,struct tcf_meta_info*) ;

__attribute__((used)) static int skbmark_check(struct sk_buff *skb, struct tcf_meta_info *e)
{
 return ife_check_meta_u32(skb->mark, e);
}
