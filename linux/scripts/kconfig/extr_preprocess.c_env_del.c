
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct env {struct env* value; struct env* name; int node; } ;


 int free (struct env*) ;
 int list_del (int *) ;

__attribute__((used)) static void env_del(struct env *e)
{
 list_del(&e->node);
 free(e->name);
 free(e->value);
 free(e);
}
