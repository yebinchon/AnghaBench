
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resolve_vertex {int t; } ;
struct btf_verifier_env {int dummy; } ;


 int EINVAL ;
 int btf_verifier_log_basic (struct btf_verifier_env*,int ,char*) ;

__attribute__((used)) static int btf_df_resolve(struct btf_verifier_env *env,
     const struct resolve_vertex *v)
{
 btf_verifier_log_basic(env, v->t, "Unsupported resolve");
 return -EINVAL;
}
