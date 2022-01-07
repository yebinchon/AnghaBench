
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ns_common {int dummy; } ;


 int put_cgroup_ns (int ) ;
 int to_cg_ns (struct ns_common*) ;

__attribute__((used)) static void cgroupns_put(struct ns_common *ns)
{
 put_cgroup_ns(to_cg_ns(ns));
}
