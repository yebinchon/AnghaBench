
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fl_flow_mask {int flags; } ;
struct fl_flow_key {int dummy; } ;
struct cls_fl_filter {int dummy; } ;


 int TCA_FLOWER_MASK_FLAGS_RANGE ;
 struct cls_fl_filter* __fl_lookup (struct fl_flow_mask*,struct fl_flow_key*) ;
 struct cls_fl_filter* fl_lookup_range (struct fl_flow_mask*,struct fl_flow_key*,struct fl_flow_key*) ;

__attribute__((used)) static struct cls_fl_filter *fl_lookup(struct fl_flow_mask *mask,
           struct fl_flow_key *mkey,
           struct fl_flow_key *key)
{
 if ((mask->flags & TCA_FLOWER_MASK_FLAGS_RANGE))
  return fl_lookup_range(mask, mkey, key);

 return __fl_lookup(mask, mkey);
}
