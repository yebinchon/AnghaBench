
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {int end; int start; } ;
struct fl_flow_mask {TYPE_1__ range; int key; } ;


 int rounddown (size_t,int) ;
 int roundup (size_t,int) ;

__attribute__((used)) static void fl_mask_update_range(struct fl_flow_mask *mask)
{
 const u8 *bytes = (const u8 *) &mask->key;
 size_t size = sizeof(mask->key);
 size_t i, first = 0, last;

 for (i = 0; i < size; i++) {
  if (bytes[i]) {
   first = i;
   break;
  }
 }
 last = first;
 for (i = size - 1; i != first; i--) {
  if (bytes[i]) {
   last = i;
   break;
  }
 }
 mask->range.start = rounddown(first, sizeof(long));
 mask->range.end = roundup(last + 1, sizeof(long));
}
