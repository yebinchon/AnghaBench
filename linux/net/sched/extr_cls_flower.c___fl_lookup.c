
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fl_flow_mask {int filter_ht_params; int ht; } ;
struct fl_flow_key {int dummy; } ;
struct cls_fl_filter {int dummy; } ;


 int fl_key_get_start (struct fl_flow_key*,struct fl_flow_mask*) ;
 struct cls_fl_filter* rhashtable_lookup_fast (int *,int ,int ) ;

__attribute__((used)) static struct cls_fl_filter *__fl_lookup(struct fl_flow_mask *mask,
      struct fl_flow_key *mkey)
{
 return rhashtable_lookup_fast(&mask->ht, fl_key_get_start(mkey, mask),
          mask->filter_ht_params);
}
