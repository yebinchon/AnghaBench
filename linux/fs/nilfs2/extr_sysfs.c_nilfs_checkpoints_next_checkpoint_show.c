
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_segctor_sem; int ns_cno; } ;
struct nilfs_checkpoints_attr {int dummy; } ;
typedef int ssize_t ;
typedef int __u64 ;


 int PAGE_SIZE ;
 int down_read (int *) ;
 int snprintf (char*,int ,char*,int ) ;
 int up_read (int *) ;

__attribute__((used)) static ssize_t
nilfs_checkpoints_next_checkpoint_show(struct nilfs_checkpoints_attr *attr,
     struct the_nilfs *nilfs,
     char *buf)
{
 __u64 cno;

 down_read(&nilfs->ns_segctor_sem);
 cno = nilfs->ns_cno;
 up_read(&nilfs->ns_segctor_sem);

 return snprintf(buf, PAGE_SIZE, "%llu\n", cno);
}
