
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_13__ ;
typedef struct TYPE_16__ TYPE_12__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_15__ {int src; } ;
struct TYPE_26__ {int src; } ;
struct TYPE_25__ {int src; } ;
struct fl_flow_key {TYPE_11__ tp_max; TYPE_9__ tp_min; TYPE_8__ tp; } ;
struct TYPE_16__ {int src; } ;
struct TYPE_14__ {int src; } ;
struct TYPE_17__ {TYPE_12__ tp_max; TYPE_10__ tp_min; } ;
struct TYPE_23__ {int src; } ;
struct TYPE_22__ {int src; } ;
struct TYPE_24__ {TYPE_6__ tp_max; TYPE_5__ tp_min; } ;
struct cls_fl_filter {TYPE_13__ mkey; TYPE_7__ key; TYPE_4__* mask; } ;
typedef scalar_t__ __be16 ;
struct TYPE_19__ {int src; } ;
struct TYPE_18__ {int src; } ;
struct TYPE_20__ {TYPE_2__ tp_max; TYPE_1__ tp_min; } ;
struct TYPE_21__ {TYPE_3__ key; } ;


 scalar_t__ htons (int ) ;

__attribute__((used)) static bool fl_range_port_src_cmp(struct cls_fl_filter *filter,
      struct fl_flow_key *key,
      struct fl_flow_key *mkey)
{
 __be16 min_mask, max_mask, min_val, max_val;

 min_mask = htons(filter->mask->key.tp_min.src);
 max_mask = htons(filter->mask->key.tp_max.src);
 min_val = htons(filter->key.tp_min.src);
 max_val = htons(filter->key.tp_max.src);

 if (min_mask && max_mask) {
  if (htons(key->tp.src) < min_val ||
      htons(key->tp.src) > max_val)
   return 0;


  mkey->tp_min.src = filter->mkey.tp_min.src;
  mkey->tp_max.src = filter->mkey.tp_max.src;
 }
 return 1;
}
