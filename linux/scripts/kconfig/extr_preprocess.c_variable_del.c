
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct variable {struct variable* value; struct variable* name; int node; } ;


 int free (struct variable*) ;
 int list_del (int *) ;

__attribute__((used)) static void variable_del(struct variable *v)
{
 list_del(&v->node);
 free(v->name);
 free(v->value);
 free(v);
}
