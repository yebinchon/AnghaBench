
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct printf_spec {int field_width; } ;
typedef int ptr ;


 int debug_boot_weak_hash ;
 char* error_string (char*,char*,char const*,struct printf_spec) ;
 unsigned long hash_long (unsigned long,int) ;
 int not_filled_random_ptr_key ;
 char* pointer_string (char*,char*,void const*,struct printf_spec) ;
 int ptr_key ;
 scalar_t__ siphash_1u32 (int ,int *) ;
 scalar_t__ siphash_1u64 (int ,int *) ;
 scalar_t__ static_branch_unlikely (int *) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static char *ptr_to_id(char *buf, char *end, const void *ptr,
         struct printf_spec spec)
{
 const char *str = sizeof(ptr) == 8 ? "(____ptrval____)" : "(ptrval)";
 unsigned long hashval;


 if (unlikely(debug_boot_weak_hash)) {
  hashval = hash_long((unsigned long)ptr, 32);
  return pointer_string(buf, end, (const void *)hashval, spec);
 }

 if (static_branch_unlikely(&not_filled_random_ptr_key)) {
  spec.field_width = 2 * sizeof(ptr);

  return error_string(buf, end, str, spec);
 }
 hashval = (unsigned long)siphash_1u32((u32)ptr, &ptr_key);

 return pointer_string(buf, end, (const void *)hashval, spec);
}
