
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct role_datum {int types; int dominates; } ;


 int ebitmap_destroy (int *) ;
 int kfree (void*) ;

__attribute__((used)) static int role_destroy(void *key, void *datum, void *p)
{
 struct role_datum *role;

 kfree(key);
 if (datum) {
  role = datum;
  ebitmap_destroy(&role->dominates);
  ebitmap_destroy(&role->types);
 }
 kfree(datum);
 return 0;
}
