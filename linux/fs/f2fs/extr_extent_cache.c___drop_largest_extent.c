
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fofs; scalar_t__ len; } ;
struct extent_tree {int largest_updated; TYPE_1__ largest; } ;
typedef scalar_t__ pgoff_t ;



__attribute__((used)) static void __drop_largest_extent(struct extent_tree *et,
     pgoff_t fofs, unsigned int len)
{
 if (fofs < et->largest.fofs + et->largest.len &&
   fofs + len > et->largest.fofs) {
  et->largest.len = 0;
  et->largest_updated = 1;
 }
}
