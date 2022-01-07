
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct env {int node; void* value; void* name; } ;


 int env_list ;
 int list_add_tail (int *,int *) ;
 struct env* xmalloc (int) ;
 void* xstrdup (char const*) ;

__attribute__((used)) static void env_add(const char *name, const char *value)
{
 struct env *e;

 e = xmalloc(sizeof(*e));
 e->name = xstrdup(name);
 e->value = xstrdup(value);

 list_add_tail(&e->node, &env_list);
}
