
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct xfs_btree_block {int bb_numrecs; } ;


 int cpu_to_be16 (int ) ;

__attribute__((used)) static inline void xfs_btree_set_numrecs(struct xfs_btree_block *block,
  uint16_t numrecs)
{
 block->bb_numrecs = cpu_to_be16(numrecs);
}
