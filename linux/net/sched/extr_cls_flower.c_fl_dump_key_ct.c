
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct flow_dissector_key_ct {int ct_labels; int ct_mark; int ct_zone; int ct_state; } ;


 int CONFIG_NF_CONNTRACK ;
 int CONFIG_NF_CONNTRACK_LABELS ;
 int CONFIG_NF_CONNTRACK_MARK ;
 int CONFIG_NF_CONNTRACK_ZONES ;
 int EMSGSIZE ;
 scalar_t__ IS_ENABLED (int ) ;
 int TCA_FLOWER_KEY_CT_LABELS ;
 int TCA_FLOWER_KEY_CT_LABELS_MASK ;
 int TCA_FLOWER_KEY_CT_MARK ;
 int TCA_FLOWER_KEY_CT_MARK_MASK ;
 int TCA_FLOWER_KEY_CT_STATE ;
 int TCA_FLOWER_KEY_CT_STATE_MASK ;
 int TCA_FLOWER_KEY_CT_ZONE ;
 int TCA_FLOWER_KEY_CT_ZONE_MASK ;
 scalar_t__ fl_dump_key_val (struct sk_buff*,int *,int ,int *,int ,int) ;

__attribute__((used)) static int fl_dump_key_ct(struct sk_buff *skb,
     struct flow_dissector_key_ct *key,
     struct flow_dissector_key_ct *mask)
{
 if (IS_ENABLED(CONFIG_NF_CONNTRACK) &&
     fl_dump_key_val(skb, &key->ct_state, TCA_FLOWER_KEY_CT_STATE,
       &mask->ct_state, TCA_FLOWER_KEY_CT_STATE_MASK,
       sizeof(key->ct_state)))
  goto nla_put_failure;

 if (IS_ENABLED(CONFIG_NF_CONNTRACK_ZONES) &&
     fl_dump_key_val(skb, &key->ct_zone, TCA_FLOWER_KEY_CT_ZONE,
       &mask->ct_zone, TCA_FLOWER_KEY_CT_ZONE_MASK,
       sizeof(key->ct_zone)))
  goto nla_put_failure;

 if (IS_ENABLED(CONFIG_NF_CONNTRACK_MARK) &&
     fl_dump_key_val(skb, &key->ct_mark, TCA_FLOWER_KEY_CT_MARK,
       &mask->ct_mark, TCA_FLOWER_KEY_CT_MARK_MASK,
       sizeof(key->ct_mark)))
  goto nla_put_failure;

 if (IS_ENABLED(CONFIG_NF_CONNTRACK_LABELS) &&
     fl_dump_key_val(skb, &key->ct_labels, TCA_FLOWER_KEY_CT_LABELS,
       &mask->ct_labels, TCA_FLOWER_KEY_CT_LABELS_MASK,
       sizeof(key->ct_labels)))
  goto nla_put_failure;

 return 0;

nla_put_failure:
 return -EMSGSIZE;
}
