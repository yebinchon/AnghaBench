
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext2_xattr_entry {int e_name_index; size_t e_name_len; int e_name; } ;


 int memcmp (char const*,int ,size_t) ;

__attribute__((used)) static int
ext2_xattr_cmp_entry(int name_index, size_t name_len, const char *name,
       struct ext2_xattr_entry *entry)
{
 int cmp;

 cmp = name_index - entry->e_name_index;
 if (!cmp)
  cmp = name_len - entry->e_name_len;
 if (!cmp)
  cmp = memcmp(name, entry->e_name, name_len);

 return cmp;
}
