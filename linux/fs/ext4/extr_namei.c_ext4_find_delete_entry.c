
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct inode {int dummy; } ;
struct ext4_dir_entry_2 {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;


 int ENOENT ;
 scalar_t__ IS_ERR (struct buffer_head*) ;
 int PTR_ERR (struct buffer_head*) ;
 int brelse (struct buffer_head*) ;
 int ext4_delete_entry (int *,struct inode*,struct ext4_dir_entry_2*,struct buffer_head*) ;
 struct buffer_head* ext4_find_entry (struct inode*,struct qstr const*,struct ext4_dir_entry_2**,int *) ;

__attribute__((used)) static int ext4_find_delete_entry(handle_t *handle, struct inode *dir,
      const struct qstr *d_name)
{
 int retval = -ENOENT;
 struct buffer_head *bh;
 struct ext4_dir_entry_2 *de;

 bh = ext4_find_entry(dir, d_name, &de, ((void*)0));
 if (IS_ERR(bh))
  return PTR_ERR(bh);
 if (bh) {
  retval = ext4_delete_entry(handle, dir, de, bh);
  brelse(bh);
 }
 return retval;
}
