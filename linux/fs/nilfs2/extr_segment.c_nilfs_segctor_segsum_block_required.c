
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nilfs_segsum_pointer {unsigned int offset; } ;
struct nilfs_sc_info {int sc_blk_cnt; TYPE_1__* sc_super; } ;
struct nilfs_finfo {int dummy; } ;
struct TYPE_2__ {unsigned int s_blocksize; } ;



__attribute__((used)) static int nilfs_segctor_segsum_block_required(
 struct nilfs_sc_info *sci, const struct nilfs_segsum_pointer *ssp,
 unsigned int binfo_size)
{
 unsigned int blocksize = sci->sc_super->s_blocksize;


 return ssp->offset + binfo_size +
  (!sci->sc_blk_cnt ? sizeof(struct nilfs_finfo) : 0) >
  blocksize;
}
