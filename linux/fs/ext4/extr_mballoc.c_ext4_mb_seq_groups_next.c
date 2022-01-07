
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct seq_file {int file; } ;
typedef scalar_t__ loff_t ;
typedef scalar_t__ ext4_group_t ;


 struct super_block* PDE_DATA (int ) ;
 scalar_t__ ext4_get_groups_count (struct super_block*) ;
 int file_inode (int ) ;

__attribute__((used)) static void *ext4_mb_seq_groups_next(struct seq_file *seq, void *v, loff_t *pos)
{
 struct super_block *sb = PDE_DATA(file_inode(seq->file));
 ext4_group_t group;

 ++*pos;
 if (*pos < 0 || *pos >= ext4_get_groups_count(sb))
  return ((void*)0);
 group = *pos + 1;
 return (void *) ((unsigned long) group);
}
