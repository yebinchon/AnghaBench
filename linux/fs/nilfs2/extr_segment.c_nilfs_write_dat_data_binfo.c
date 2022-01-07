
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bi_blkoff; } ;
union nilfs_binfo {TYPE_1__ bi_dat; } ;
struct nilfs_segsum_pointer {int dummy; } ;
struct nilfs_sc_info {int dummy; } ;
typedef int __le64 ;


 int * nilfs_segctor_map_segsum_entry (struct nilfs_sc_info*,struct nilfs_segsum_pointer*,int) ;

__attribute__((used)) static void nilfs_write_dat_data_binfo(struct nilfs_sc_info *sci,
           struct nilfs_segsum_pointer *ssp,
           union nilfs_binfo *binfo)
{
 __le64 *blkoff = nilfs_segctor_map_segsum_entry(sci, ssp,
         sizeof(*blkoff));
 *blkoff = binfo->bi_dat.bi_blkoff;
}
