
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {int name_off; } ;
struct btf {size_t nr_types; struct btf_type** types; } ;
typedef size_t __u32 ;
typedef size_t __s32 ;


 size_t ENOENT ;
 char* btf__name_by_offset (struct btf const*,int ) ;
 int strcmp (char const*,char const*) ;

__s32 btf__find_by_name(const struct btf *btf, const char *type_name)
{
 __u32 i;

 if (!strcmp(type_name, "void"))
  return 0;

 for (i = 1; i <= btf->nr_types; i++) {
  const struct btf_type *t = btf->types[i];
  const char *name = btf__name_by_offset(btf, t->name_off);

  if (name && !strcmp(type_name, name))
   return i;
 }

 return -ENOENT;
}
