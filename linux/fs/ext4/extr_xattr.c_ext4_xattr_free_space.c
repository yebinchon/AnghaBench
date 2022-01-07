
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_xattr_entry {int e_name_len; int e_value_offs; scalar_t__ e_value_size; int e_value_inum; } ;
typedef int __u32 ;


 scalar_t__ EXT4_XATTR_LEN (int ) ;
 struct ext4_xattr_entry* EXT4_XATTR_NEXT (struct ext4_xattr_entry*) ;
 int IS_LAST_ENTRY (struct ext4_xattr_entry*) ;
 size_t le16_to_cpu (int ) ;

__attribute__((used)) static size_t ext4_xattr_free_space(struct ext4_xattr_entry *last,
        size_t *min_offs, void *base, int *total)
{
 for (; !IS_LAST_ENTRY(last); last = EXT4_XATTR_NEXT(last)) {
  if (!last->e_value_inum && last->e_value_size) {
   size_t offs = le16_to_cpu(last->e_value_offs);
   if (offs < *min_offs)
    *min_offs = offs;
  }
  if (total)
   *total += EXT4_XATTR_LEN(last->e_name_len);
 }
 return (*min_offs - ((void *)last - base) - sizeof(__u32));
}
