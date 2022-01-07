
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct the_nilfs {int ns_segctor_sem; int ns_seg_seq; } ;
struct nilfs_segctor_attr {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int down_read (int *) ;
 int snprintf (char*,int ,char*,int ) ;
 int up_read (int *) ;

__attribute__((used)) static ssize_t
nilfs_segctor_current_seg_sequence_show(struct nilfs_segctor_attr *attr,
     struct the_nilfs *nilfs,
     char *buf)
{
 u64 seg_seq;

 down_read(&nilfs->ns_segctor_sem);
 seg_seq = nilfs->ns_seg_seq;
 up_read(&nilfs->ns_segctor_sem);

 return snprintf(buf, PAGE_SIZE, "%llu\n", seg_seq);
}
