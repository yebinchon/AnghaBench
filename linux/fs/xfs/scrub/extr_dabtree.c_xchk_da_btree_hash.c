
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ xfs_dahash_t ;
struct xfs_da_state_blk {int index; } ;
struct xfs_da_node_entry {int hashval; } ;
struct xchk_da_btree {scalar_t__* hashes; TYPE_2__* state; } ;
typedef int __be32 ;
struct TYPE_3__ {struct xfs_da_state_blk* blk; } ;
struct TYPE_4__ {TYPE_1__ path; } ;


 scalar_t__ be32_to_cpu (int ) ;
 struct xfs_da_node_entry* xchk_da_btree_entry (struct xchk_da_btree*,int,int ) ;
 int xchk_da_set_corrupt (struct xchk_da_btree*,int) ;

int
xchk_da_btree_hash(
 struct xchk_da_btree *ds,
 int level,
 __be32 *hashp)
{
 struct xfs_da_state_blk *blks;
 struct xfs_da_node_entry *entry;
 xfs_dahash_t hash;
 xfs_dahash_t parent_hash;


 hash = be32_to_cpu(*hashp);
 if (hash < ds->hashes[level])
  xchk_da_set_corrupt(ds, level);
 ds->hashes[level] = hash;

 if (level == 0)
  return 0;


 blks = ds->state->path.blk;
 entry = xchk_da_btree_entry(ds, level - 1, blks[level - 1].index);
 parent_hash = be32_to_cpu(entry->hashval);
 if (parent_hash < hash)
  xchk_da_set_corrupt(ds, level);

 return 0;
}
