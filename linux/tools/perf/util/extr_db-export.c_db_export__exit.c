
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct db_export {int * crp; } ;


 int call_return_processor__free (int *) ;

void db_export__exit(struct db_export *dbe)
{
 call_return_processor__free(dbe->crp);
 dbe->crp = ((void*)0);
}
