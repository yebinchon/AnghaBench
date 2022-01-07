
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct flow_dissector_key_ct {int * ct_labels; int ct_mark; int ct_zone; int ct_state; } ;


 int CONFIG_NF_CONNTRACK ;
 int CONFIG_NF_CONNTRACK_LABELS ;
 int CONFIG_NF_CONNTRACK_MARK ;
 int CONFIG_NF_CONNTRACK_ZONES ;
 int EOPNOTSUPP ;
 int IS_ENABLED (int ) ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 size_t TCA_FLOWER_KEY_CT_LABELS ;
 int TCA_FLOWER_KEY_CT_LABELS_MASK ;
 size_t TCA_FLOWER_KEY_CT_MARK ;
 int TCA_FLOWER_KEY_CT_MARK_MASK ;
 size_t TCA_FLOWER_KEY_CT_STATE ;
 int TCA_FLOWER_KEY_CT_STATE_MASK ;
 size_t TCA_FLOWER_KEY_CT_ZONE ;
 int TCA_FLOWER_KEY_CT_ZONE_MASK ;
 int fl_set_key_val (struct nlattr**,int *,size_t,int *,int ,int) ;

__attribute__((used)) static int fl_set_key_ct(struct nlattr **tb,
    struct flow_dissector_key_ct *key,
    struct flow_dissector_key_ct *mask,
    struct netlink_ext_ack *extack)
{
 if (tb[TCA_FLOWER_KEY_CT_STATE]) {
  if (!IS_ENABLED(CONFIG_NF_CONNTRACK)) {
   NL_SET_ERR_MSG(extack, "Conntrack isn't enabled");
   return -EOPNOTSUPP;
  }
  fl_set_key_val(tb, &key->ct_state, TCA_FLOWER_KEY_CT_STATE,
          &mask->ct_state, TCA_FLOWER_KEY_CT_STATE_MASK,
          sizeof(key->ct_state));
 }
 if (tb[TCA_FLOWER_KEY_CT_ZONE]) {
  if (!IS_ENABLED(CONFIG_NF_CONNTRACK_ZONES)) {
   NL_SET_ERR_MSG(extack, "Conntrack zones isn't enabled");
   return -EOPNOTSUPP;
  }
  fl_set_key_val(tb, &key->ct_zone, TCA_FLOWER_KEY_CT_ZONE,
          &mask->ct_zone, TCA_FLOWER_KEY_CT_ZONE_MASK,
          sizeof(key->ct_zone));
 }
 if (tb[TCA_FLOWER_KEY_CT_MARK]) {
  if (!IS_ENABLED(CONFIG_NF_CONNTRACK_MARK)) {
   NL_SET_ERR_MSG(extack, "Conntrack mark isn't enabled");
   return -EOPNOTSUPP;
  }
  fl_set_key_val(tb, &key->ct_mark, TCA_FLOWER_KEY_CT_MARK,
          &mask->ct_mark, TCA_FLOWER_KEY_CT_MARK_MASK,
          sizeof(key->ct_mark));
 }
 if (tb[TCA_FLOWER_KEY_CT_LABELS]) {
  if (!IS_ENABLED(CONFIG_NF_CONNTRACK_LABELS)) {
   NL_SET_ERR_MSG(extack, "Conntrack labels aren't enabled");
   return -EOPNOTSUPP;
  }
  fl_set_key_val(tb, key->ct_labels, TCA_FLOWER_KEY_CT_LABELS,
          mask->ct_labels, TCA_FLOWER_KEY_CT_LABELS_MASK,
          sizeof(key->ct_labels));
 }

 return 0;
}
