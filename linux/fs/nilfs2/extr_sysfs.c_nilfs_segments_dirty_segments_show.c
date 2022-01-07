
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_sb; int ns_segctor_sem; int ns_sufile; } ;
struct nilfs_sustat {int ss_ndirtysegs; } ;
struct nilfs_segments_attr {int dummy; } ;
typedef int ssize_t ;


 int KERN_ERR ;
 int PAGE_SIZE ;
 int down_read (int *) ;
 int nilfs_msg (int ,int ,char*,int) ;
 int nilfs_sufile_get_stat (int ,struct nilfs_sustat*) ;
 int snprintf (char*,int ,char*,int ) ;
 int up_read (int *) ;

__attribute__((used)) static ssize_t
nilfs_segments_dirty_segments_show(struct nilfs_segments_attr *attr,
        struct the_nilfs *nilfs,
        char *buf)
{
 struct nilfs_sustat sustat;
 int err;

 down_read(&nilfs->ns_segctor_sem);
 err = nilfs_sufile_get_stat(nilfs->ns_sufile, &sustat);
 up_read(&nilfs->ns_segctor_sem);
 if (err < 0) {
  nilfs_msg(nilfs->ns_sb, KERN_ERR,
     "unable to get segment stat: err=%d", err);
  return err;
 }

 return snprintf(buf, PAGE_SIZE, "%llu\n", sustat.ss_ndirtysegs);
}
