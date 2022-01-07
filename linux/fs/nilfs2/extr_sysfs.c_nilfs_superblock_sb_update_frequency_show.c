
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {unsigned int ns_sb_update_freq; int ns_sem; } ;
struct nilfs_superblock_attr {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int down_read (int *) ;
 int snprintf (char*,int ,char*,unsigned int) ;
 int up_read (int *) ;

__attribute__((used)) static ssize_t
nilfs_superblock_sb_update_frequency_show(struct nilfs_superblock_attr *attr,
         struct the_nilfs *nilfs,
         char *buf)
{
 unsigned int sb_update_freq;

 down_read(&nilfs->ns_sem);
 sb_update_freq = nilfs->ns_sb_update_freq;
 up_read(&nilfs->ns_sem);

 return snprintf(buf, PAGE_SIZE, "%u\n", sb_update_freq);
}
