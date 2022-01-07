
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sw_flow_match {struct sw_flow_mask* mask; struct sw_flow_match* key; } ;
struct TYPE_2__ {scalar_t__ end; scalar_t__ start; } ;
struct sw_flow_mask {TYPE_1__ range; struct sw_flow_match key; } ;
struct sw_flow_key {struct sw_flow_mask* mask; struct sw_flow_key* key; } ;


 int memset (struct sw_flow_match*,int ,int) ;

void ovs_match_init(struct sw_flow_match *match,
      struct sw_flow_key *key,
      bool reset_key,
      struct sw_flow_mask *mask)
{
 memset(match, 0, sizeof(*match));
 match->key = key;
 match->mask = mask;

 if (reset_key)
  memset(key, 0, sizeof(*key));

 if (mask) {
  memset(&mask->key, 0, sizeof(mask->key));
  mask->range.start = mask->range.end = 0;
 }
}
