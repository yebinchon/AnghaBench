
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {unsigned long ns_nsegments; int ns_nrsvsegs; } ;


 int nilfs_nrsvsegs (struct the_nilfs*,unsigned long) ;

void nilfs_set_nsegments(struct the_nilfs *nilfs, unsigned long nsegs)
{
 nilfs->ns_nsegments = nsegs;
 nilfs->ns_nrsvsegs = nilfs_nrsvsegs(nilfs, nsegs);
}
