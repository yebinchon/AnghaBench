
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_verifier_env {int dummy; } ;
struct btf_type {int dummy; } ;


 scalar_t__ btf_type_kflag (struct btf_type const*) ;
 int btf_verifier_log (struct btf_verifier_env*,char*,char*) ;

__attribute__((used)) static void btf_fwd_type_log(struct btf_verifier_env *env,
        const struct btf_type *t)
{
 btf_verifier_log(env, "%s", btf_type_kflag(t) ? "union" : "struct");
}
