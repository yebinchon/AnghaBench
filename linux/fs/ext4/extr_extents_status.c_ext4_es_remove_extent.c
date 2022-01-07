
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_ino; } ;
typedef scalar_t__ ext4_lblk_t ;
struct TYPE_2__ {int i_es_lock; } ;


 int BUG_ON (int) ;
 TYPE_1__* EXT4_I (struct inode*) ;
 int __es_remove_extent (struct inode*,scalar_t__,scalar_t__,int*) ;
 int es_debug (char*,scalar_t__,scalar_t__,int ) ;
 int ext4_da_release_space (struct inode*,int) ;
 int ext4_es_print_tree (struct inode*) ;
 int trace_ext4_es_remove_extent (struct inode*,scalar_t__,scalar_t__) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

int ext4_es_remove_extent(struct inode *inode, ext4_lblk_t lblk,
     ext4_lblk_t len)
{
 ext4_lblk_t end;
 int err = 0;
 int reserved = 0;

 trace_ext4_es_remove_extent(inode, lblk, len);
 es_debug("remove [%u/%u) from extent status tree of inode %lu\n",
   lblk, len, inode->i_ino);

 if (!len)
  return err;

 end = lblk + len - 1;
 BUG_ON(end < lblk);






 write_lock(&EXT4_I(inode)->i_es_lock);
 err = __es_remove_extent(inode, lblk, end, &reserved);
 write_unlock(&EXT4_I(inode)->i_es_lock);
 ext4_es_print_tree(inode);
 ext4_da_release_space(inode, reserved);
 return err;
}
