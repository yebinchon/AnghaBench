
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {int ns_last_segment_lock; scalar_t__ ns_last_pseg; } ;
struct nilfs_segctor_attr {int dummy; } ;
typedef int ssize_t ;
typedef scalar_t__ sector_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,unsigned long long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static ssize_t
nilfs_segctor_last_pseg_block_show(struct nilfs_segctor_attr *attr,
        struct the_nilfs *nilfs,
        char *buf)
{
 sector_t last_pseg;

 spin_lock(&nilfs->ns_last_segment_lock);
 last_pseg = nilfs->ns_last_pseg;
 spin_unlock(&nilfs->ns_last_segment_lock);

 return snprintf(buf, PAGE_SIZE, "%llu\n",
   (unsigned long long)last_pseg);
}
