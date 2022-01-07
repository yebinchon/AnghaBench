
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ perf_hook_func_t ;
struct TYPE_3__ {void* hook_ctx; scalar_t__* p_hook_func; int hook_name; } ;


 unsigned int ARRAY_SIZE (TYPE_1__**) ;
 int ENOENT ;
 TYPE_1__** perf_hooks ;
 int pr_warning (char*,char const*) ;
 scalar_t__ strcmp (char const*,int ) ;

int perf_hooks__set_hook(const char *hook_name,
    perf_hook_func_t hook_func,
    void *hook_ctx)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(perf_hooks); i++) {
  if (strcmp(hook_name, perf_hooks[i]->hook_name) != 0)
   continue;

  if (*(perf_hooks[i]->p_hook_func))
   pr_warning("Overwrite existing hook: %s\n", hook_name);
  *(perf_hooks[i]->p_hook_func) = hook_func;
  perf_hooks[i]->hook_ctx = hook_ctx;
  return 0;
 }
 return -ENOENT;
}
