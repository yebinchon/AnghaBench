
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_dest_dst {int rcu_head; } ;
struct ip_vs_dest {int dest_dst; } ;


 int RCU_INIT_POINTER (int ,int *) ;
 int call_rcu (int *,int ) ;
 int ip_vs_dest_dst_rcu_free ;
 struct ip_vs_dest_dst* rcu_dereference_protected (int ,int) ;

__attribute__((used)) static void __ip_vs_dst_cache_reset(struct ip_vs_dest *dest)
{
 struct ip_vs_dest_dst *old;

 old = rcu_dereference_protected(dest->dest_dst, 1);
 if (old) {
  RCU_INIT_POINTER(dest->dest_dst, ((void*)0));
  call_rcu(&old->rcu_head, ip_vs_dest_dst_rcu_free);
 }
}
