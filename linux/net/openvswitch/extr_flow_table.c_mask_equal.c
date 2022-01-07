
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int start; scalar_t__ end; } ;
struct sw_flow_mask {TYPE_1__ range; int key; } ;


 scalar_t__ memcmp (int const*,int const*,int ) ;
 int range_n_bytes (TYPE_1__*) ;

__attribute__((used)) static bool mask_equal(const struct sw_flow_mask *a,
         const struct sw_flow_mask *b)
{
 const u8 *a_ = (const u8 *)&a->key + a->range.start;
 const u8 *b_ = (const u8 *)&b->key + b->range.start;

 return (a->range.end == b->range.end)
  && (a->range.start == b->range.start)
  && (memcmp(a_, b_, range_n_bytes(&a->range)) == 0);
}
