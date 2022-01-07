
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct the_nilfs {unsigned int ns_sb_update_freq; int ns_sem; int ns_sb; } ;
struct nilfs_superblock_attr {int dummy; } ;
typedef int ssize_t ;


 int KERN_ERR ;
 int KERN_WARNING ;
 unsigned int NILFS_SB_FREQ ;
 int down_write (int *) ;
 int kstrtouint (int ,int ,unsigned int*) ;
 int nilfs_msg (int ,int ,char*,...) ;
 int skip_spaces (char const*) ;
 int up_write (int *) ;

__attribute__((used)) static ssize_t
nilfs_superblock_sb_update_frequency_store(struct nilfs_superblock_attr *attr,
         struct the_nilfs *nilfs,
         const char *buf, size_t count)
{
 unsigned int val;
 int err;

 err = kstrtouint(skip_spaces(buf), 0, &val);
 if (err) {
  nilfs_msg(nilfs->ns_sb, KERN_ERR,
     "unable to convert string: err=%d", err);
  return err;
 }

 if (val < NILFS_SB_FREQ) {
  val = NILFS_SB_FREQ;
  nilfs_msg(nilfs->ns_sb, KERN_WARNING,
     "superblock update frequency cannot be lesser than 10 seconds");
 }

 down_write(&nilfs->ns_sem);
 nilfs->ns_sb_update_freq = val;
 up_write(&nilfs->ns_sem);

 return count;
}
