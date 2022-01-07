
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int locator_match; } ;
struct ila_xlat_params {TYPE_2__ ip; } ;
struct TYPE_3__ {int rhash_table; } ;
struct ila_net {TYPE_1__ xlat; } ;
struct ila_map {int next; } ;


 int ila_cmp_params (struct ila_map*,struct ila_xlat_params*) ;
 struct ila_map* rcu_access_pointer (int ) ;
 struct ila_map* rhashtable_lookup_fast (int *,int *,int ) ;
 int rht_params ;

__attribute__((used)) static inline struct ila_map *ila_lookup_by_params(struct ila_xlat_params *xp,
         struct ila_net *ilan)
{
 struct ila_map *ila;

 ila = rhashtable_lookup_fast(&ilan->xlat.rhash_table,
         &xp->ip.locator_match,
         rht_params);
 while (ila) {
  if (!ila_cmp_params(ila, xp))
   return ila;
  ila = rcu_access_pointer(ila->next);
 }

 return ((void*)0);
}
