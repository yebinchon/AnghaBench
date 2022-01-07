
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dst_entry {int dummy; } ;
struct dn_route {scalar_t__ n; } ;


 int dst_destroy_metrics_generic (struct dst_entry*) ;
 int neigh_release (scalar_t__) ;

__attribute__((used)) static void dn_dst_destroy(struct dst_entry *dst)
{
 struct dn_route *rt = (struct dn_route *) dst;

 if (rt->n)
  neigh_release(rt->n);
 dst_destroy_metrics_generic(dst);
}
