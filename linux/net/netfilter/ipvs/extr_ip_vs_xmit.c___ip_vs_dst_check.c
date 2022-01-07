
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ip_vs_dest_dst {int dst_cookie; struct dst_entry* dst_cache; } ;
struct ip_vs_dest {int dest_dst; } ;
struct dst_entry {TYPE_1__* ops; scalar_t__ obsolete; } ;
struct TYPE_2__ {int * (* check ) (struct dst_entry*,int ) ;} ;


 struct ip_vs_dest_dst* rcu_dereference (int ) ;
 int * stub1 (struct dst_entry*,int ) ;

__attribute__((used)) static inline struct ip_vs_dest_dst *
__ip_vs_dst_check(struct ip_vs_dest *dest)
{
 struct ip_vs_dest_dst *dest_dst = rcu_dereference(dest->dest_dst);
 struct dst_entry *dst;

 if (!dest_dst)
  return ((void*)0);
 dst = dest_dst->dst_cache;
 if (dst->obsolete &&
     dst->ops->check(dst, dest_dst->dst_cookie) == ((void*)0))
  return ((void*)0);
 return dest_dst;
}
