
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ip_vs_dest_dst {int rcu_head; int dst_cookie; struct dst_entry* dst_cache; } ;
struct ip_vs_dest {int dest_dst; int dst_lock; } ;
struct dst_entry {int dummy; } ;


 int call_rcu (int *,int ) ;
 int ip_vs_dest_dst_rcu_free ;
 int lockdep_is_held (int *) ;
 int rcu_assign_pointer (int ,struct ip_vs_dest_dst*) ;
 struct ip_vs_dest_dst* rcu_dereference_protected (int ,int ) ;

__attribute__((used)) static inline void
__ip_vs_dst_set(struct ip_vs_dest *dest, struct ip_vs_dest_dst *dest_dst,
  struct dst_entry *dst, u32 dst_cookie)
{
 struct ip_vs_dest_dst *old;

 old = rcu_dereference_protected(dest->dest_dst,
     lockdep_is_held(&dest->dst_lock));

 if (dest_dst) {
  dest_dst->dst_cache = dst;
  dest_dst->dst_cookie = dst_cookie;
 }
 rcu_assign_pointer(dest->dest_dst, dest_dst);

 if (old)
  call_rcu(&old->rcu_head, ip_vs_dest_dst_rcu_free);
}
