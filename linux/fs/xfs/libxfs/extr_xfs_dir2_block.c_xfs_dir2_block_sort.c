
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hashval; } ;
typedef TYPE_1__ xfs_dir2_leaf_entry_t ;


 scalar_t__ be32_to_cpu (int ) ;

__attribute__((used)) static int
xfs_dir2_block_sort(
 const void *a,
 const void *b)
{
 const xfs_dir2_leaf_entry_t *la;
 const xfs_dir2_leaf_entry_t *lb;

 la = a;
 lb = b;
 return be32_to_cpu(la->hashval) < be32_to_cpu(lb->hashval) ? -1 :
  (be32_to_cpu(la->hashval) > be32_to_cpu(lb->hashval) ? 1 : 0);
}
