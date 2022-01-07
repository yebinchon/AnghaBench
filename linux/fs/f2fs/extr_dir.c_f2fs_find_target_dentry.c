
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscrypt_str {int * name; int len; } ;
struct fscrypt_name {int usr_fname; } ;
struct f2fs_dir_entry {int name_len; } ;
struct f2fs_dentry_ptr {unsigned long max; struct f2fs_dir_entry* dentry; int bitmap; int inode; } ;
typedef int f2fs_hash_t ;


 scalar_t__ GET_DENTRY_SLOTS (int ) ;
 int f2fs_fname_setup_ci_filename (int ,int ,struct fscrypt_str*) ;
 scalar_t__ f2fs_match_name (struct f2fs_dentry_ptr*,struct f2fs_dir_entry*,struct fscrypt_name*,struct fscrypt_str*,unsigned long,int ) ;
 int kvfree (int *) ;
 int le16_to_cpu (int ) ;
 int test_bit_le (unsigned long,int ) ;
 scalar_t__ unlikely (int) ;

struct f2fs_dir_entry *f2fs_find_target_dentry(struct fscrypt_name *fname,
   f2fs_hash_t namehash, int *max_slots,
   struct f2fs_dentry_ptr *d)
{
 struct f2fs_dir_entry *de;
 struct fscrypt_str cf_str = { .name = ((void*)0), .len = 0 };
 unsigned long bit_pos = 0;
 int max_len = 0;





 if (max_slots)
  *max_slots = 0;
 while (bit_pos < d->max) {
  if (!test_bit_le(bit_pos, d->bitmap)) {
   bit_pos++;
   max_len++;
   continue;
  }

  de = &d->dentry[bit_pos];

  if (unlikely(!de->name_len)) {
   bit_pos++;
   continue;
  }

  if (f2fs_match_name(d, de, fname, &cf_str, bit_pos, namehash))
   goto found;

  if (max_slots && max_len > *max_slots)
   *max_slots = max_len;
  max_len = 0;

  bit_pos += GET_DENTRY_SLOTS(le16_to_cpu(de->name_len));
 }

 de = ((void*)0);
found:
 if (max_slots && max_len > *max_slots)
  *max_slots = max_len;




 return de;
}
