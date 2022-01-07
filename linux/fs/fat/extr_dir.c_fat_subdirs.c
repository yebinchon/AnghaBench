
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msdos_dir_entry {int attr; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef scalar_t__ loff_t ;


 int ATTR_DIR ;
 int brelse (struct buffer_head*) ;
 scalar_t__ fat_get_short_entry (struct inode*,scalar_t__*,struct buffer_head**,struct msdos_dir_entry**) ;

int fat_subdirs(struct inode *dir)
{
 struct buffer_head *bh;
 struct msdos_dir_entry *de;
 loff_t cpos;
 int count = 0;

 bh = ((void*)0);
 cpos = 0;
 while (fat_get_short_entry(dir, &cpos, &bh, &de) >= 0) {
  if (de->attr & ATTR_DIR)
   count++;
 }
 brelse(bh);
 return count;
}
