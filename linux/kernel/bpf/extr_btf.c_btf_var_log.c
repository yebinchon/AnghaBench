
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_verifier_env {int dummy; } ;
struct btf_var {int linkage; } ;
struct btf_type {int type; } ;


 struct btf_var* btf_type_var (struct btf_type const*) ;
 int btf_verifier_log (struct btf_verifier_env*,char*,int ,int ) ;

__attribute__((used)) static void btf_var_log(struct btf_verifier_env *env, const struct btf_type *t)
{
 const struct btf_var *var = btf_type_var(t);

 btf_verifier_log(env, "type_id=%u linkage=%u", t->type, var->linkage);
}
