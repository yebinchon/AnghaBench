
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct qstr {int len; int name; } ;
struct f2fs_dir_entry {scalar_t__ name_len; int ino; int hash_code; } ;
struct f2fs_dentry_ptr {scalar_t__ bitmap; int * filename; struct f2fs_dir_entry* dentry; } ;
typedef int nid_t ;
typedef int f2fs_hash_t ;


 int GET_DENTRY_SLOTS (int ) ;
 int __set_bit_le (unsigned int,void*) ;
 scalar_t__ cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int memcpy (int ,int ,int ) ;
 int set_de_type (struct f2fs_dir_entry*,int ) ;

void f2fs_update_dentry(nid_t ino, umode_t mode, struct f2fs_dentry_ptr *d,
    const struct qstr *name, f2fs_hash_t name_hash,
    unsigned int bit_pos)
{
 struct f2fs_dir_entry *de;
 int slots = GET_DENTRY_SLOTS(name->len);
 int i;

 de = &d->dentry[bit_pos];
 de->hash_code = name_hash;
 de->name_len = cpu_to_le16(name->len);
 memcpy(d->filename[bit_pos], name->name, name->len);
 de->ino = cpu_to_le32(ino);
 set_de_type(de, mode);
 for (i = 0; i < slots; i++) {
  __set_bit_le(bit_pos + i, (void *)d->bitmap);

  if (i)
   (de + i)->name_len = 0;
 }
}
