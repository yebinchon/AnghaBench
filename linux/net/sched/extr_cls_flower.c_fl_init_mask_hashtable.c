
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int key_offset; int key_len; } ;
struct TYPE_4__ {scalar_t__ start; } ;
struct fl_flow_mask {TYPE_2__ filter_ht_params; int ht; TYPE_1__ range; } ;


 TYPE_2__ fl_ht_params ;
 int fl_mask_range (struct fl_flow_mask*) ;
 int rhashtable_init (int *,TYPE_2__*) ;

__attribute__((used)) static int fl_init_mask_hashtable(struct fl_flow_mask *mask)
{
 mask->filter_ht_params = fl_ht_params;
 mask->filter_ht_params.key_len = fl_mask_range(mask);
 mask->filter_ht_params.key_offset += mask->range.start;

 return rhashtable_init(&mask->ht, &mask->filter_ht_params);
}
