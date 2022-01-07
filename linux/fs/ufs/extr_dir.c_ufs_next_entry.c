
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_dir_entry {int d_reclen; } ;
struct super_block {int dummy; } ;


 int fs16_to_cpu (struct super_block*,int ) ;

__attribute__((used)) static inline struct ufs_dir_entry *
ufs_next_entry(struct super_block *sb, struct ufs_dir_entry *p)
{
 return (struct ufs_dir_entry *)((char *)p +
     fs16_to_cpu(sb, p->d_reclen));
}
