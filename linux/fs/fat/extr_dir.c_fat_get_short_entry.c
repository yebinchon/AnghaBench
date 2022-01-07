
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msdos_dir_entry {int attr; int name; } ;
struct inode {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int loff_t ;


 int ATTR_VOLUME ;
 int ENOENT ;
 int IS_FREE (int ) ;
 scalar_t__ fat_get_entry (struct inode*,int *,struct buffer_head**,struct msdos_dir_entry**) ;

__attribute__((used)) static int fat_get_short_entry(struct inode *dir, loff_t *pos,
          struct buffer_head **bh,
          struct msdos_dir_entry **de)
{
 while (fat_get_entry(dir, pos, bh, de) >= 0) {

  if (!IS_FREE((*de)->name) && !((*de)->attr & ATTR_VOLUME))
   return 0;
 }
 return -ENOENT;
}
