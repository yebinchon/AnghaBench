
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct btf_type {size_t size; } ;
struct btf {size_t* resolved_sizes; size_t* resolved_ids; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 struct btf_type* btf_type_by_id (struct btf const*,size_t) ;
 scalar_t__ btf_type_has_size (struct btf_type const*) ;
 scalar_t__ btf_type_is_array (struct btf_type const*) ;
 int btf_type_is_modifier (struct btf_type const*) ;
 scalar_t__ btf_type_is_ptr (struct btf_type const*) ;
 int btf_type_is_var (struct btf_type const*) ;
 scalar_t__ btf_type_nosize_or_null (struct btf_type const*) ;

const struct btf_type *btf_type_id_size(const struct btf *btf,
     u32 *type_id, u32 *ret_size)
{
 const struct btf_type *size_type;
 u32 size_type_id = *type_id;
 u32 size = 0;

 size_type = btf_type_by_id(btf, size_type_id);
 if (btf_type_nosize_or_null(size_type))
  return ((void*)0);

 if (btf_type_has_size(size_type)) {
  size = size_type->size;
 } else if (btf_type_is_array(size_type)) {
  size = btf->resolved_sizes[size_type_id];
 } else if (btf_type_is_ptr(size_type)) {
  size = sizeof(void *);
 } else {
  if (WARN_ON_ONCE(!btf_type_is_modifier(size_type) &&
     !btf_type_is_var(size_type)))
   return ((void*)0);

  size_type_id = btf->resolved_ids[size_type_id];
  size_type = btf_type_by_id(btf, size_type_id);
  if (btf_type_nosize_or_null(size_type))
   return ((void*)0);
  else if (btf_type_has_size(size_type))
   size = size_type->size;
  else if (btf_type_is_array(size_type))
   size = btf->resolved_sizes[size_type_id];
  else if (btf_type_is_ptr(size_type))
   size = sizeof(void *);
  else
   return ((void*)0);
 }

 *type_id = size_type_id;
 if (ret_size)
  *ret_size = size;

 return size_type;
}
