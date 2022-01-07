
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct the_nilfs {int ns_dat; int ns_sufile; } ;
struct nilfs_segments_attr {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int mi_sem; } ;


 TYPE_1__* NILFS_MDT (int ) ;
 int PAGE_SIZE ;
 int down_read (int *) ;
 unsigned long nilfs_sufile_get_ncleansegs (int ) ;
 int snprintf (char*,int ,char*,unsigned long) ;
 int up_read (int *) ;

__attribute__((used)) static ssize_t
nilfs_segments_clean_segments_show(struct nilfs_segments_attr *attr,
        struct the_nilfs *nilfs,
        char *buf)
{
 unsigned long ncleansegs;

 down_read(&NILFS_MDT(nilfs->ns_dat)->mi_sem);
 ncleansegs = nilfs_sufile_get_ncleansegs(nilfs->ns_sufile);
 up_read(&NILFS_MDT(nilfs->ns_dat)->mi_sem);

 return snprintf(buf, PAGE_SIZE, "%lu\n", ncleansegs);
}
