
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {scalar_t__ name_off; } ;
struct btf_dump {int btf; } ;
typedef int __u32 ;


 struct btf_type* btf__type_by_id (int ,int ) ;
 int btf_name_of (struct btf_dump*,scalar_t__) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static bool btf_dump_is_blacklisted(struct btf_dump *d, __u32 id)
{
 const struct btf_type *t = btf__type_by_id(d->btf, id);







 if (t->name_off == 0)
  return 0;
 return strcmp(btf_name_of(d, t->name_off), "__builtin_va_list") == 0;
}
