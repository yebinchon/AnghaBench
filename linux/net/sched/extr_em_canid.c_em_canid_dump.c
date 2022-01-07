
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_ematch {int dummy; } ;
struct sk_buff {int dummy; } ;
struct canid_match {int rules_count; int rules_raw; } ;
struct can_filter {int dummy; } ;


 int EMSGSIZE ;
 struct canid_match* em_canid_priv (struct tcf_ematch*) ;
 scalar_t__ nla_put_nohdr (struct sk_buff*,int,int *) ;

__attribute__((used)) static int em_canid_dump(struct sk_buff *skb, struct tcf_ematch *m)
{
 struct canid_match *cm = em_canid_priv(m);





 if (nla_put_nohdr(skb, sizeof(struct can_filter) * cm->rules_count,
     &cm->rules_raw) < 0)
  return -EMSGSIZE;

 return 0;
}
