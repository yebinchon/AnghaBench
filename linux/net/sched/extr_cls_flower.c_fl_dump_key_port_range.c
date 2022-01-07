
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_4__ {int src; int dst; } ;
struct TYPE_3__ {int src; int dst; } ;
struct fl_flow_key {TYPE_2__ tp_max; TYPE_1__ tp_min; } ;


 int TCA_FLOWER_KEY_PORT_DST_MAX ;
 int TCA_FLOWER_KEY_PORT_DST_MIN ;
 int TCA_FLOWER_KEY_PORT_SRC_MAX ;
 int TCA_FLOWER_KEY_PORT_SRC_MIN ;
 int TCA_FLOWER_UNSPEC ;
 scalar_t__ fl_dump_key_val (struct sk_buff*,int *,int ,int *,int ,int) ;

__attribute__((used)) static int fl_dump_key_port_range(struct sk_buff *skb, struct fl_flow_key *key,
      struct fl_flow_key *mask)
{
 if (fl_dump_key_val(skb, &key->tp_min.dst, TCA_FLOWER_KEY_PORT_DST_MIN,
       &mask->tp_min.dst, TCA_FLOWER_UNSPEC,
       sizeof(key->tp_min.dst)) ||
     fl_dump_key_val(skb, &key->tp_max.dst, TCA_FLOWER_KEY_PORT_DST_MAX,
       &mask->tp_max.dst, TCA_FLOWER_UNSPEC,
       sizeof(key->tp_max.dst)) ||
     fl_dump_key_val(skb, &key->tp_min.src, TCA_FLOWER_KEY_PORT_SRC_MIN,
       &mask->tp_min.src, TCA_FLOWER_UNSPEC,
       sizeof(key->tp_min.src)) ||
     fl_dump_key_val(skb, &key->tp_max.src, TCA_FLOWER_KEY_PORT_SRC_MAX,
       &mask->tp_max.src, TCA_FLOWER_UNSPEC,
       sizeof(key->tp_max.src)))
  return -1;

 return 0;
}
