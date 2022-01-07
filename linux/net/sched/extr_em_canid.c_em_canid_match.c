
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_pkt_info {int dummy; } ;
struct tcf_ematch {int dummy; } ;
struct sk_buff {int dummy; } ;
struct canid_match {int eff_rules_count; int match_sff; struct can_filter* rules_raw; } ;
struct can_filter {int can_id; int can_mask; } ;
typedef int canid_t ;


 int CAN_EFF_FLAG ;
 int CAN_SFF_MASK ;
 int em_canid_get_id (struct sk_buff*) ;
 struct canid_match* em_canid_priv (struct tcf_ematch*) ;
 scalar_t__ test_bit (int,int ) ;

__attribute__((used)) static int em_canid_match(struct sk_buff *skb, struct tcf_ematch *m,
    struct tcf_pkt_info *info)
{
 struct canid_match *cm = em_canid_priv(m);
 canid_t can_id;
 int match = 0;
 int i;
 const struct can_filter *lp;

 can_id = em_canid_get_id(skb);

 if (can_id & CAN_EFF_FLAG) {
  for (i = 0, lp = cm->rules_raw;
       i < cm->eff_rules_count; i++, lp++) {
   if (!(((lp->can_id ^ can_id) & lp->can_mask))) {
    match = 1;
    break;
   }
  }
 } else {
  can_id &= CAN_SFF_MASK;
  match = (test_bit(can_id, cm->match_sff) ? 1 : 0);
 }

 return match;
}
