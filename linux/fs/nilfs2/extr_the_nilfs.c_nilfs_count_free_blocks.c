
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct the_nilfs {int ns_blocks_per_segment; int ns_dat; int ns_sufile; } ;
typedef int sector_t ;
struct TYPE_2__ {int mi_sem; } ;


 TYPE_1__* NILFS_MDT (int ) ;
 int down_read (int *) ;
 unsigned long nilfs_sufile_get_ncleansegs (int ) ;
 int up_read (int *) ;

int nilfs_count_free_blocks(struct the_nilfs *nilfs, sector_t *nblocks)
{
 unsigned long ncleansegs;

 down_read(&NILFS_MDT(nilfs->ns_dat)->mi_sem);
 ncleansegs = nilfs_sufile_get_ncleansegs(nilfs->ns_sufile);
 up_read(&NILFS_MDT(nilfs->ns_dat)->mi_sem);
 *nblocks = (sector_t)ncleansegs * nilfs->ns_blocks_per_segment;
 return 0;
}
