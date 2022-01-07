
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btf_verifier_env {int visit_states; } ;


 int kfree (struct btf_verifier_env*) ;
 int kvfree (int ) ;

__attribute__((used)) static void btf_verifier_env_free(struct btf_verifier_env *env)
{
 kvfree(env->visit_states);
 kfree(env);
}
