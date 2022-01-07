
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_cbq_wrropt {int weight; scalar_t__ cpriority; scalar_t__ priority; int allot; scalar_t__ flags; } ;
struct sk_buff {int len; } ;
struct cbq_class {int weight; scalar_t__ cpriority; scalar_t__ priority; int allot; } ;
typedef int opt ;


 int TCA_CBQ_WRROPT ;
 int memset (struct tc_cbq_wrropt*,int ,int) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct tc_cbq_wrropt*) ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;

__attribute__((used)) static int cbq_dump_wrr(struct sk_buff *skb, struct cbq_class *cl)
{
 unsigned char *b = skb_tail_pointer(skb);
 struct tc_cbq_wrropt opt;

 memset(&opt, 0, sizeof(opt));
 opt.flags = 0;
 opt.allot = cl->allot;
 opt.priority = cl->priority + 1;
 opt.cpriority = cl->cpriority + 1;
 opt.weight = cl->weight;
 if (nla_put(skb, TCA_CBQ_WRROPT, sizeof(opt), &opt))
  goto nla_put_failure;
 return skb->len;

nla_put_failure:
 nlmsg_trim(skb, b);
 return -1;
}
