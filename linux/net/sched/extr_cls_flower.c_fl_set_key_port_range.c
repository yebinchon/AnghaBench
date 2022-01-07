
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nlattr {int dummy; } ;
struct TYPE_4__ {scalar_t__ src; scalar_t__ dst; } ;
struct TYPE_3__ {scalar_t__ src; scalar_t__ dst; } ;
struct fl_flow_key {TYPE_2__ tp_min; TYPE_1__ tp_max; } ;


 int EINVAL ;
 int TCA_FLOWER_KEY_PORT_DST_MAX ;
 int TCA_FLOWER_KEY_PORT_DST_MIN ;
 int TCA_FLOWER_KEY_PORT_SRC_MAX ;
 int TCA_FLOWER_KEY_PORT_SRC_MIN ;
 int TCA_FLOWER_UNSPEC ;
 int fl_set_key_val (struct nlattr**,scalar_t__*,int ,scalar_t__*,int ,int) ;
 scalar_t__ htons (scalar_t__) ;

__attribute__((used)) static int fl_set_key_port_range(struct nlattr **tb, struct fl_flow_key *key,
     struct fl_flow_key *mask)
{
 fl_set_key_val(tb, &key->tp_min.dst,
         TCA_FLOWER_KEY_PORT_DST_MIN, &mask->tp_min.dst,
         TCA_FLOWER_UNSPEC, sizeof(key->tp_min.dst));
 fl_set_key_val(tb, &key->tp_max.dst,
         TCA_FLOWER_KEY_PORT_DST_MAX, &mask->tp_max.dst,
         TCA_FLOWER_UNSPEC, sizeof(key->tp_max.dst));
 fl_set_key_val(tb, &key->tp_min.src,
         TCA_FLOWER_KEY_PORT_SRC_MIN, &mask->tp_min.src,
         TCA_FLOWER_UNSPEC, sizeof(key->tp_min.src));
 fl_set_key_val(tb, &key->tp_max.src,
         TCA_FLOWER_KEY_PORT_SRC_MAX, &mask->tp_max.src,
         TCA_FLOWER_UNSPEC, sizeof(key->tp_max.src));

 if ((mask->tp_min.dst && mask->tp_max.dst &&
      htons(key->tp_max.dst) <= htons(key->tp_min.dst)) ||
      (mask->tp_min.src && mask->tp_max.src &&
       htons(key->tp_max.src) <= htons(key->tp_min.src)))
  return -EINVAL;

 return 0;
}
