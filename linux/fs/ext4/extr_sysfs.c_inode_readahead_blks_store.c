
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_sb_info {unsigned long s_inode_readahead_blks; } ;
typedef int ssize_t ;


 int EINVAL ;
 int is_power_of_2 (unsigned long) ;
 int kstrtoul (int ,int ,unsigned long*) ;
 int skip_spaces (char const*) ;

__attribute__((used)) static ssize_t inode_readahead_blks_store(struct ext4_sb_info *sbi,
       const char *buf, size_t count)
{
 unsigned long t;
 int ret;

 ret = kstrtoul(skip_spaces(buf), 0, &t);
 if (ret)
  return ret;

 if (t && (!is_power_of_2(t) || t > 0x40000000))
  return -EINVAL;

 sbi->s_inode_readahead_blks = t;
 return count;
}
