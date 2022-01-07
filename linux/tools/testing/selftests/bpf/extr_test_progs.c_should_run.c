
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_selector {int num_set_len; scalar_t__* num_set; scalar_t__* name; } ;


 int strstr (char const*,scalar_t__*) ;

__attribute__((used)) static bool should_run(struct test_selector *sel, int num, const char *name)
{
 if (sel->name && sel->name[0] && !strstr(name, sel->name))
  return 0;

 if (!sel->num_set)
  return 1;

 return num < sel->num_set_len && sel->num_set[num];
}
