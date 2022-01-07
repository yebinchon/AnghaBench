
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobj_uevent_env {int envp_idx; scalar_t__ buflen; scalar_t__* envp; } ;
typedef int modalias_prefix ;


 int memmove (scalar_t__,scalar_t__,scalar_t__) ;
 int strlen (scalar_t__) ;
 scalar_t__ strncmp (scalar_t__,char const*,int) ;

__attribute__((used)) static void zap_modalias_env(struct kobj_uevent_env *env)
{
 static const char modalias_prefix[] = "MODALIAS=";
 size_t len;
 int i, j;

 for (i = 0; i < env->envp_idx;) {
  if (strncmp(env->envp[i], modalias_prefix,
       sizeof(modalias_prefix) - 1)) {
   i++;
   continue;
  }

  len = strlen(env->envp[i]) + 1;

  if (i != env->envp_idx - 1) {
   memmove(env->envp[i], env->envp[i + 1],
    env->buflen - len);

   for (j = i; j < env->envp_idx - 1; j++)
    env->envp[j] = env->envp[j + 1] - len;
  }

  env->envp_idx--;
  env->buflen -= len;
 }
}
