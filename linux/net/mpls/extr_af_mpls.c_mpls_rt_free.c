
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpls_route {int dummy; } ;


 int kfree_rcu (struct mpls_route*,int ) ;
 int rt_rcu ;

__attribute__((used)) static void mpls_rt_free(struct mpls_route *rt)
{
 if (rt)
  kfree_rcu(rt, rt_rcu);
}
