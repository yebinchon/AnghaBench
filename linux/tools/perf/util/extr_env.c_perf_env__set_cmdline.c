
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_env {char const** cmdline_argv; int nr_cmdline; } ;


 int ENOMEM ;
 char const** calloc (int,int) ;
 int zfree (char const***) ;

int perf_env__set_cmdline(struct perf_env *env, int argc, const char *argv[])
{
 int i;


 env->cmdline_argv = calloc(argc, sizeof(char *));
 if (env->cmdline_argv == ((void*)0))
  goto out_enomem;





 for (i = 0; i < argc ; i++) {
  env->cmdline_argv[i] = argv[i];
  if (env->cmdline_argv[i] == ((void*)0))
   goto out_free;
 }

 env->nr_cmdline = argc;

 return 0;
out_free:
 zfree(&env->cmdline_argv);
out_enomem:
 return -ENOMEM;
}
