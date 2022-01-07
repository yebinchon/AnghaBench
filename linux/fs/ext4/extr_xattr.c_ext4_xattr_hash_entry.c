
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hash ;
typedef int __u32 ;
typedef int __le32 ;


 int NAME_HASH_SHIFT ;
 int VALUE_HASH_SHIFT ;
 int cpu_to_le32 (int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static __le32 ext4_xattr_hash_entry(char *name, size_t name_len, __le32 *value,
        size_t value_count)
{
 __u32 hash = 0;

 while (name_len--) {
  hash = (hash << NAME_HASH_SHIFT) ^
         (hash >> (8*sizeof(hash) - NAME_HASH_SHIFT)) ^
         *name++;
 }
 while (value_count--) {
  hash = (hash << VALUE_HASH_SHIFT) ^
         (hash >> (8*sizeof(hash) - VALUE_HASH_SHIFT)) ^
         le32_to_cpu(*value++);
 }
 return cpu_to_le32(hash);
}
