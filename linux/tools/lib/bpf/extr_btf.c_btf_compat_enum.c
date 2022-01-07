
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_type {scalar_t__ name_off; int info; scalar_t__ size; } ;


 int btf_equal_enum (struct btf_type*,struct btf_type*) ;
 int btf_is_enum_fwd (struct btf_type*) ;

__attribute__((used)) static bool btf_compat_enum(struct btf_type *t1, struct btf_type *t2)
{
 if (!btf_is_enum_fwd(t1) && !btf_is_enum_fwd(t2))
  return btf_equal_enum(t1, t2);

 return t1->name_off == t2->name_off &&
        (t1->info & ~0xffff) == (t2->info & ~0xffff) &&
        t1->size == t2->size;
}
