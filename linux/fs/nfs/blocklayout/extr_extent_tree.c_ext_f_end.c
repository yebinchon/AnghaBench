
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_block_extent {scalar_t__ be_length; scalar_t__ be_f_offset; } ;
typedef scalar_t__ sector_t ;



__attribute__((used)) static inline sector_t
ext_f_end(struct pnfs_block_extent *be)
{
 return be->be_f_offset + be->be_length;
}
