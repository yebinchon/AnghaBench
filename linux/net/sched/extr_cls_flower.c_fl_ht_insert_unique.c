
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fl_flow_mask {int filter_ht_params; int ht; } ;
struct cls_fl_filter {int ht_node; struct fl_flow_mask* mask; } ;


 int EEXIST ;
 int rhashtable_lookup_insert_fast (int *,int *,int ) ;

__attribute__((used)) static int fl_ht_insert_unique(struct cls_fl_filter *fnew,
          struct cls_fl_filter *fold,
          bool *in_ht)
{
 struct fl_flow_mask *mask = fnew->mask;
 int err;

 err = rhashtable_lookup_insert_fast(&mask->ht,
         &fnew->ht_node,
         mask->filter_ht_params);
 if (err) {
  *in_ht = 0;



  return fold && err == -EEXIST ? 0 : err;
 }

 *in_ht = 1;
 return 0;
}
