
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_dh_state {struct ip_vs_dh_bucket* buckets; } ;
struct ip_vs_dh_bucket {int dest; } ;
struct ip_vs_dest {int dummy; } ;


 int IP_VS_DH_TAB_SIZE ;
 int RCU_INIT_POINTER (int ,int *) ;
 int ip_vs_dest_put (struct ip_vs_dest*) ;
 struct ip_vs_dest* rcu_dereference_protected (int ,int) ;

__attribute__((used)) static void ip_vs_dh_flush(struct ip_vs_dh_state *s)
{
 int i;
 struct ip_vs_dh_bucket *b;
 struct ip_vs_dest *dest;

 b = &s->buckets[0];
 for (i=0; i<IP_VS_DH_TAB_SIZE; i++) {
  dest = rcu_dereference_protected(b->dest, 1);
  if (dest) {
   ip_vs_dest_put(dest);
   RCU_INIT_POINTER(b->dest, ((void*)0));
  }
  b++;
 }
}
