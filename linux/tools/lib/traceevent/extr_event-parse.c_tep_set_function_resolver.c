
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tep_func_resolver_t ;
struct tep_handle {struct func_resolver* func_resolver; } ;
struct func_resolver {void* priv; int * func; } ;


 int free (struct func_resolver*) ;
 struct func_resolver* malloc (int) ;

int tep_set_function_resolver(struct tep_handle *tep,
         tep_func_resolver_t *func, void *priv)
{
 struct func_resolver *resolver = malloc(sizeof(*resolver));

 if (resolver == ((void*)0))
  return -1;

 resolver->func = func;
 resolver->priv = priv;

 free(tep->func_resolver);
 tep->func_resolver = resolver;

 return 0;
}
