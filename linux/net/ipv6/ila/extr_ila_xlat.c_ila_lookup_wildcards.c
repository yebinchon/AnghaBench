
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rhash_table; } ;
struct ila_net {TYPE_1__ xlat; } ;
struct ila_map {int next; } ;
struct ila_addr {int loc; } ;


 int ila_cmp_wildcards (struct ila_map*,struct ila_addr*,int) ;
 struct ila_map* rcu_access_pointer (int ) ;
 struct ila_map* rhashtable_lookup_fast (int *,int *,int ) ;
 int rht_params ;

__attribute__((used)) static inline struct ila_map *ila_lookup_wildcards(struct ila_addr *iaddr,
         int ifindex,
         struct ila_net *ilan)
{
 struct ila_map *ila;

 ila = rhashtable_lookup_fast(&ilan->xlat.rhash_table, &iaddr->loc,
         rht_params);
 while (ila) {
  if (!ila_cmp_wildcards(ila, iaddr, ifindex))
   return ila;
  ila = rcu_access_pointer(ila->next);
 }

 return ((void*)0);
}
