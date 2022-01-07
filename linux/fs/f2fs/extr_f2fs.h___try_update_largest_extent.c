
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ len; } ;
struct extent_tree {int largest_updated; TYPE_1__ largest; } ;
struct extent_node {TYPE_1__ ei; } ;



__attribute__((used)) static inline void __try_update_largest_extent(struct extent_tree *et,
      struct extent_node *en)
{
 if (en->ei.len > et->largest.len) {
  et->largest = en->ei;
  et->largest_updated = 1;
 }
}
