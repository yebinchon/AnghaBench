
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct the_nilfs {int ns_last_segment_lock; int ns_last_seq; } ;
struct nilfs_segctor_attr {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t
nilfs_segctor_last_seg_sequence_show(struct nilfs_segctor_attr *attr,
     struct the_nilfs *nilfs,
     char *buf)
{
 u64 last_seq;

 spin_lock(&nilfs->ns_last_segment_lock);
 last_seq = nilfs->ns_last_seq;
 spin_unlock(&nilfs->ns_last_segment_lock);

 return snprintf(buf, PAGE_SIZE, "%llu\n", last_seq);
}
