
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tc_cbq_fopt {int defchange; scalar_t__ defmap; int split; } ;
struct sk_buff {int len; } ;
struct cbq_class {scalar_t__ defmap; TYPE_2__* split; } ;
typedef int opt ;
struct TYPE_3__ {int classid; } ;
struct TYPE_4__ {TYPE_1__ common; } ;


 int TCA_CBQ_FOPT ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct tc_cbq_fopt*) ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;

__attribute__((used)) static int cbq_dump_fopt(struct sk_buff *skb, struct cbq_class *cl)
{
 unsigned char *b = skb_tail_pointer(skb);
 struct tc_cbq_fopt opt;

 if (cl->split || cl->defmap) {
  opt.split = cl->split ? cl->split->common.classid : 0;
  opt.defmap = cl->defmap;
  opt.defchange = ~0;
  if (nla_put(skb, TCA_CBQ_FOPT, sizeof(opt), &opt))
   goto nla_put_failure;
 }
 return skb->len;

nla_put_failure:
 nlmsg_trim(skb, b);
 return -1;
}
