
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct cbq_class {TYPE_1__* R_tab; } ;
struct TYPE_2__ {int rate; } ;


 int TCA_CBQ_RATE ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,int *) ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;

__attribute__((used)) static int cbq_dump_rate(struct sk_buff *skb, struct cbq_class *cl)
{
 unsigned char *b = skb_tail_pointer(skb);

 if (nla_put(skb, TCA_CBQ_RATE, sizeof(cl->R_tab->rate), &cl->R_tab->rate))
  goto nla_put_failure;
 return skb->len;

nla_put_failure:
 nlmsg_trim(skb, b);
 return -1;
}
