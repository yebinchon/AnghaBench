
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ns_common {int dummy; } ;


 int put_mnt_ns (int ) ;
 int to_mnt_ns (struct ns_common*) ;

__attribute__((used)) static void mntns_put(struct ns_common *ns)
{
 put_mnt_ns(to_mnt_ns(ns));
}
