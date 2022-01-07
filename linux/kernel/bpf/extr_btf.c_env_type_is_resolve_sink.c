
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_verifier_env {int resolve_mode; } ;
struct btf_type {int dummy; } ;


 int BUG () ;



 int btf_type_is_array (struct btf_type const*) ;
 int btf_type_is_modifier (struct btf_type const*) ;
 int btf_type_is_ptr (struct btf_type const*) ;
 int btf_type_is_struct (struct btf_type const*) ;
 int btf_type_needs_resolve (struct btf_type const*) ;

__attribute__((used)) static bool env_type_is_resolve_sink(const struct btf_verifier_env *env,
         const struct btf_type *next_type)
{
 switch (env->resolve_mode) {
 case 128:

  return !btf_type_needs_resolve(next_type);
 case 130:



  return !btf_type_is_modifier(next_type) &&
   !btf_type_is_ptr(next_type);
 case 129:



  return !btf_type_is_modifier(next_type) &&
   !btf_type_is_array(next_type) &&
   !btf_type_is_struct(next_type);
 default:
  BUG();
 }
}
