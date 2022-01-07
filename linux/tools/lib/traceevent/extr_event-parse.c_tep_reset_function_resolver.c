
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {int * func_resolver; } ;


 int free (int *) ;

void tep_reset_function_resolver(struct tep_handle *tep)
{
 free(tep->func_resolver);
 tep->func_resolver = ((void*)0);
}
