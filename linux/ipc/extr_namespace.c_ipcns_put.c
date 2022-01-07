
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ns_common {int dummy; } ;


 void put_ipc_ns (int ) ;
 int to_ipc_ns (struct ns_common*) ;

__attribute__((used)) static void ipcns_put(struct ns_common *ns)
{
 return put_ipc_ns(to_ipc_ns(ns));
}
