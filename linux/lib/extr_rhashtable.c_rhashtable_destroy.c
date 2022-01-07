
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rhashtable {int dummy; } ;


 void rhashtable_free_and_destroy (struct rhashtable*,int *,int *) ;

void rhashtable_destroy(struct rhashtable *ht)
{
 return rhashtable_free_and_destroy(ht, ((void*)0), ((void*)0));
}
