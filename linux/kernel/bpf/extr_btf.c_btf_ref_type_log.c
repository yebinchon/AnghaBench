
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_verifier_env {int dummy; } ;
struct btf_type {int type; } ;


 int btf_verifier_log (struct btf_verifier_env*,char*,int ) ;

__attribute__((used)) static void btf_ref_type_log(struct btf_verifier_env *env,
        const struct btf_type *t)
{
 btf_verifier_log(env, "type_id=%u", t->type);
}
