
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int kref; } ;


 scalar_t__ kref_read (int *) ;

__attribute__((used)) static
bool xprt_is_active(const struct rpc_xprt *xprt)
{
 return kref_read(&xprt->kref) != 0;
}
