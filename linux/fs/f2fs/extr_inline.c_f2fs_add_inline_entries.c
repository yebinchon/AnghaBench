
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct qstr {int len; int name; } ;
struct inode {int i_data; } ;
struct f2fs_dir_entry {int name_len; int ino; } ;
struct f2fs_dentry_ptr {unsigned long max; int * filename; struct f2fs_dir_entry* dentry; int bitmap; } ;
typedef int nid_t ;


 scalar_t__ GET_DENTRY_SLOTS (int ) ;
 int S_SHIFT ;
 int f2fs_add_regular_entry (struct inode*,struct qstr*,int *,int *,int ,int) ;
 int f2fs_get_de_type (struct f2fs_dir_entry*) ;
 int f2fs_remove_dirty_inode (struct inode*) ;
 int f2fs_truncate_blocks (struct inode*,int ,int) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;
 int make_dentry_ptr_inline (struct inode*,struct f2fs_dentry_ptr*,void*) ;
 int test_bit_le (unsigned long,int ) ;
 int truncate_inode_pages (int *,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int f2fs_add_inline_entries(struct inode *dir, void *inline_dentry)
{
 struct f2fs_dentry_ptr d;
 unsigned long bit_pos = 0;
 int err = 0;

 make_dentry_ptr_inline(dir, &d, inline_dentry);

 while (bit_pos < d.max) {
  struct f2fs_dir_entry *de;
  struct qstr new_name;
  nid_t ino;
  umode_t fake_mode;

  if (!test_bit_le(bit_pos, d.bitmap)) {
   bit_pos++;
   continue;
  }

  de = &d.dentry[bit_pos];

  if (unlikely(!de->name_len)) {
   bit_pos++;
   continue;
  }

  new_name.name = d.filename[bit_pos];
  new_name.len = le16_to_cpu(de->name_len);

  ino = le32_to_cpu(de->ino);
  fake_mode = f2fs_get_de_type(de) << S_SHIFT;

  err = f2fs_add_regular_entry(dir, &new_name, ((void*)0), ((void*)0),
       ino, fake_mode);
  if (err)
   goto punch_dentry_pages;

  bit_pos += GET_DENTRY_SLOTS(le16_to_cpu(de->name_len));
 }
 return 0;
punch_dentry_pages:
 truncate_inode_pages(&dir->i_data, 0);
 f2fs_truncate_blocks(dir, 0, 0);
 f2fs_remove_dirty_inode(dir);
 return err;
}
