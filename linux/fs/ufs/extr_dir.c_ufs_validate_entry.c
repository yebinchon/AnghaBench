
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_dir_entry {int dummy; } ;
struct super_block {int dummy; } ;


 struct ufs_dir_entry* ufs_next_entry (struct super_block*,struct ufs_dir_entry*) ;

__attribute__((used)) static inline unsigned
ufs_validate_entry(struct super_block *sb, char *base,
     unsigned offset, unsigned mask)
{
 struct ufs_dir_entry *de = (struct ufs_dir_entry*)(base + offset);
 struct ufs_dir_entry *p = (struct ufs_dir_entry*)(base + (offset&mask));
 while ((char*)p < (char*)de)
  p = ufs_next_entry(sb, p);
 return (char *)p - base;
}
