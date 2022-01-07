
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_xattr_entry {int e_name_len; int e_value_size; void* e_name; } ;


 size_t le16_to_cpu (int ) ;
 int memcmp (void*,void const*,size_t) ;

__attribute__((used)) static bool f2fs_xattr_value_same(struct f2fs_xattr_entry *entry,
     const void *value, size_t size)
{
 void *pval = entry->e_name + entry->e_name_len;

 return (le16_to_cpu(entry->e_value_size) == size) &&
     !memcmp(pval, value, size);
}
