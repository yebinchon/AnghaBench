
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_blocks_per_segment; } ;
typedef int sector_t ;
typedef int __u64 ;


 int sector_div (int ,int ) ;

__attribute__((used)) static inline __u64
nilfs_get_segnum_of_block(struct the_nilfs *nilfs, sector_t blocknr)
{
 sector_t segnum = blocknr;

 sector_div(segnum, nilfs->ns_blocks_per_segment);
 return segnum;
}
