
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct scatterlist {int dummy; } ;


 int __skb_to_sgvec (struct sk_buff*,struct scatterlist*,int,int,int ) ;

int skb_to_sgvec_nomark(struct sk_buff *skb, struct scatterlist *sg,
   int offset, int len)
{
 return __skb_to_sgvec(skb, sg, offset, len, 0);
}
