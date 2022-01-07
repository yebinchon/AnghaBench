
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_ematch {int datalen; unsigned long data; } ;
struct net {int dummy; } ;
struct canid_match {int rules_count; scalar_t__ sff_rules_count; scalar_t__ eff_rules_count; scalar_t__ rules_raw; } ;
struct can_filter {int can_id; int can_mask; } ;


 int CAN_EFF_FLAG ;
 int EINVAL ;
 int EM_CAN_RULES_MAX ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int em_canid_sff_match_add (struct canid_match*,int,int ) ;
 struct canid_match* kzalloc (int,int ) ;
 int memcpy (scalar_t__,struct can_filter*,int) ;

__attribute__((used)) static int em_canid_change(struct net *net, void *data, int len,
     struct tcf_ematch *m)
{
 struct can_filter *conf = data;
 struct canid_match *cm;
 int i;

 if (!len)
  return -EINVAL;

 if (len % sizeof(struct can_filter))
  return -EINVAL;

 if (len > sizeof(struct can_filter) * EM_CAN_RULES_MAX)
  return -EINVAL;

 cm = kzalloc(sizeof(struct canid_match) + len, GFP_KERNEL);
 if (!cm)
  return -ENOMEM;

 cm->rules_count = len / sizeof(struct can_filter);
 for (i = 0; i < cm->rules_count; i++) {
  if (conf[i].can_id & CAN_EFF_FLAG) {
   memcpy(cm->rules_raw + cm->eff_rules_count,
    &conf[i],
    sizeof(struct can_filter));

   cm->eff_rules_count++;
  }
 }


 for (i = 0; i < cm->rules_count; i++) {
  if (!(conf[i].can_id & CAN_EFF_FLAG)) {
   memcpy(cm->rules_raw
    + cm->eff_rules_count
    + cm->sff_rules_count,
    &conf[i], sizeof(struct can_filter));

   cm->sff_rules_count++;

   em_canid_sff_match_add(cm,
    conf[i].can_id, conf[i].can_mask);
  }
 }

 m->datalen = sizeof(struct canid_match) + len;
 m->data = (unsigned long)cm;
 return 0;
}
