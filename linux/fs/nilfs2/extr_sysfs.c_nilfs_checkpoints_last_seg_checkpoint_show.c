
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_last_segment_lock; int ns_last_cno; } ;
struct nilfs_checkpoints_attr {int dummy; } ;
typedef int ssize_t ;
typedef int __u64 ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t
nilfs_checkpoints_last_seg_checkpoint_show(struct nilfs_checkpoints_attr *attr,
         struct the_nilfs *nilfs,
         char *buf)
{
 __u64 last_cno;

 spin_lock(&nilfs->ns_last_segment_lock);
 last_cno = nilfs->ns_last_cno;
 spin_unlock(&nilfs->ns_last_segment_lock);

 return snprintf(buf, PAGE_SIZE, "%llu\n", last_cno);
}
