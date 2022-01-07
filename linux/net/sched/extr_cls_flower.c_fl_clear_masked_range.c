
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fl_flow_mask {int dummy; } ;
struct fl_flow_key {int dummy; } ;


 int fl_key_get_start (struct fl_flow_key*,struct fl_flow_mask*) ;
 int fl_mask_range (struct fl_flow_mask*) ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static void fl_clear_masked_range(struct fl_flow_key *key,
      struct fl_flow_mask *mask)
{
 memset(fl_key_get_start(key, mask), 0, fl_mask_range(mask));
}
