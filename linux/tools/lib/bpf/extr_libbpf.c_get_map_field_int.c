
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int type; } ;
struct btf_member {int name_off; int type; } ;
struct btf_array {int nelems; } ;
struct btf {int dummy; } ;
typedef int __u32 ;


 char* btf__name_by_offset (struct btf const*,int ) ;
 struct btf_type* btf__type_by_id (struct btf const*,int ) ;
 struct btf_array* btf_array (struct btf_type const*) ;
 int btf_is_array (struct btf_type const*) ;
 int btf_is_ptr (struct btf_type const*) ;
 int btf_kind (struct btf_type const*) ;
 int pr_warning (char*,char const*,char const*,int ) ;
 struct btf_type* skip_mods_and_typedefs (struct btf const*,int ,int *) ;

__attribute__((used)) static bool get_map_field_int(const char *map_name, const struct btf *btf,
         const struct btf_type *def,
         const struct btf_member *m, __u32 *res) {
 const struct btf_type *t = skip_mods_and_typedefs(btf, m->type, ((void*)0));
 const char *name = btf__name_by_offset(btf, m->name_off);
 const struct btf_array *arr_info;
 const struct btf_type *arr_t;

 if (!btf_is_ptr(t)) {
  pr_warning("map '%s': attr '%s': expected PTR, got %u.\n",
      map_name, name, btf_kind(t));
  return 0;
 }

 arr_t = btf__type_by_id(btf, t->type);
 if (!arr_t) {
  pr_warning("map '%s': attr '%s': type [%u] not found.\n",
      map_name, name, t->type);
  return 0;
 }
 if (!btf_is_array(arr_t)) {
  pr_warning("map '%s': attr '%s': expected ARRAY, got %u.\n",
      map_name, name, btf_kind(arr_t));
  return 0;
 }
 arr_info = btf_array(arr_t);
 *res = arr_info->nelems;
 return 1;
}
