
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int perf_hook_func_t ;
struct TYPE_3__ {int * p_hook_func; int hook_name; } ;


 unsigned int ARRAY_SIZE (TYPE_1__**) ;
 int ENOENT ;
 int ERR_PTR (int ) ;
 TYPE_1__** perf_hooks ;
 scalar_t__ strcmp (char const*,int ) ;

perf_hook_func_t perf_hooks__get_hook(const char *hook_name)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(perf_hooks); i++) {
  if (strcmp(hook_name, perf_hooks[i]->hook_name) != 0)
   continue;

  return *(perf_hooks[i]->p_hook_func);
 }
 return ERR_PTR(-ENOENT);
}
