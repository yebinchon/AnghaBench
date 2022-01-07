
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct hfsc_class {int cl_flags; int cl_usc; int cl_fsc; int cl_rsc; } ;


 int HFSC_FSC ;
 int HFSC_RSC ;
 int HFSC_USC ;
 int TCA_HFSC_FSC ;
 int TCA_HFSC_RSC ;
 int TCA_HFSC_USC ;
 scalar_t__ hfsc_dump_sc (struct sk_buff*,int ,int *) ;

__attribute__((used)) static int
hfsc_dump_curves(struct sk_buff *skb, struct hfsc_class *cl)
{
 if ((cl->cl_flags & HFSC_RSC) &&
     (hfsc_dump_sc(skb, TCA_HFSC_RSC, &cl->cl_rsc) < 0))
  goto nla_put_failure;

 if ((cl->cl_flags & HFSC_FSC) &&
     (hfsc_dump_sc(skb, TCA_HFSC_FSC, &cl->cl_fsc) < 0))
  goto nla_put_failure;

 if ((cl->cl_flags & HFSC_USC) &&
     (hfsc_dump_sc(skb, TCA_HFSC_USC, &cl->cl_usc) < 0))
  goto nla_put_failure;

 return skb->len;

 nla_put_failure:
 return -1;
}
