
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int size; int type; } ;
struct btf_array {int nelems; int type; } ;
struct btf {int dummy; } ;
typedef int __u32 ;
typedef int __s64 ;
 int E2BIG ;
 int EINVAL ;
 int MAX_RESOLVE_DEPTH ;
 int UINT32_MAX ;
 struct btf_type* btf__type_by_id (struct btf const*,int) ;
 struct btf_array* btf_array (struct btf_type const*) ;
 int btf_kind (struct btf_type const*) ;
 int btf_type_is_void_or_null (struct btf_type const*) ;

__s64 btf__resolve_size(const struct btf *btf, __u32 type_id)
{
 const struct btf_array *array;
 const struct btf_type *t;
 __u32 nelems = 1;
 __s64 size = -1;
 int i;

 t = btf__type_by_id(btf, type_id);
 for (i = 0; i < MAX_RESOLVE_DEPTH && !btf_type_is_void_or_null(t);
      i++) {
  switch (btf_kind(t)) {
  case 135:
  case 132:
  case 130:
  case 136:
  case 137:
   size = t->size;
   goto done;
  case 134:
   size = sizeof(void *);
   goto done;
  case 131:
  case 128:
  case 138:
  case 133:
  case 129:
   type_id = t->type;
   break;
  case 139:
   array = btf_array(t);
   if (nelems && array->nelems > UINT32_MAX / nelems)
    return -E2BIG;
   nelems *= array->nelems;
   type_id = array->type;
   break;
  default:
   return -EINVAL;
  }

  t = btf__type_by_id(btf, type_id);
 }

 if (size < 0)
  return -EINVAL;

done:
 if (nelems && size > UINT32_MAX / nelems)
  return -E2BIG;

 return nelems * size;
}
