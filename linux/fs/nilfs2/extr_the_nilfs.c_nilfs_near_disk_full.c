
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_blocks_per_segment; unsigned long ns_nrsvsegs; int ns_ndirtyblks; int ns_sufile; } ;


 int atomic_read (int *) ;
 unsigned long nilfs_sufile_get_ncleansegs (int ) ;

int nilfs_near_disk_full(struct the_nilfs *nilfs)
{
 unsigned long ncleansegs, nincsegs;

 ncleansegs = nilfs_sufile_get_ncleansegs(nilfs->ns_sufile);
 nincsegs = atomic_read(&nilfs->ns_ndirtyblks) /
  nilfs->ns_blocks_per_segment + 1;

 return ncleansegs <= nilfs->ns_nrsvsegs + nincsegs;
}
