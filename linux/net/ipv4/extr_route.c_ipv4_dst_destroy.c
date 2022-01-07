
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtable {int dummy; } ;
struct dst_entry {int dummy; } ;


 int ip_dst_metrics_put (struct dst_entry*) ;
 int rt_del_uncached_list (struct rtable*) ;

__attribute__((used)) static void ipv4_dst_destroy(struct dst_entry *dst)
{
 struct rtable *rt = (struct rtable *)dst;

 ip_dst_metrics_put(dst);
 rt_del_uncached_list(rt);
}
