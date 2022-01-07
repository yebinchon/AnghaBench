
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_layout_segment {int pls_layout; } ;
struct pnfs_block_layout {int dummy; } ;


 struct pnfs_block_layout* BLK_LO2EXT (int ) ;

__attribute__((used)) static inline struct pnfs_block_layout *
BLK_LSEG2EXT(struct pnfs_layout_segment *lseg)
{
 return BLK_LO2EXT(lseg->pls_layout);
}
