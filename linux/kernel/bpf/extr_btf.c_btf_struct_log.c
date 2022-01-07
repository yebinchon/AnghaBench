
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_verifier_env {int dummy; } ;
struct btf_type {int size; } ;


 int btf_type_vlen (struct btf_type const*) ;
 int btf_verifier_log (struct btf_verifier_env*,char*,int ,int ) ;

__attribute__((used)) static void btf_struct_log(struct btf_verifier_env *env,
      const struct btf_type *t)
{
 btf_verifier_log(env, "size=%u vlen=%u", t->size, btf_type_vlen(t));
}
