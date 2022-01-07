
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ns_common {int dummy; } ;


 int put_pid_ns (int ) ;
 int to_pid_ns (struct ns_common*) ;

__attribute__((used)) static void pidns_put(struct ns_common *ns)
{
 put_pid_ns(to_pid_ns(ns));
}
