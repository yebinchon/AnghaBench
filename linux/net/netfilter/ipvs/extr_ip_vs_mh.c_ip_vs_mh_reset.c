
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_mh_state {struct ip_vs_mh_lookup* lookup; } ;
struct ip_vs_mh_lookup {int dest; } ;
struct ip_vs_dest {int dummy; } ;


 int IP_VS_MH_TAB_SIZE ;
 int RCU_INIT_POINTER (int ,int *) ;
 int ip_vs_dest_put (struct ip_vs_dest*) ;
 struct ip_vs_dest* rcu_dereference_protected (int ,int) ;

__attribute__((used)) static void ip_vs_mh_reset(struct ip_vs_mh_state *s)
{
 int i;
 struct ip_vs_mh_lookup *l;
 struct ip_vs_dest *dest;

 l = &s->lookup[0];
 for (i = 0; i < IP_VS_MH_TAB_SIZE; i++) {
  dest = rcu_dereference_protected(l->dest, 1);
  if (dest) {
   ip_vs_dest_put(dest);
   RCU_INIT_POINTER(l->dest, ((void*)0));
  }
  l++;
 }
}
