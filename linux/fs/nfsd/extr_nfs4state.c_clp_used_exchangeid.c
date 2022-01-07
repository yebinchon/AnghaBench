
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_client {scalar_t__ cl_exchange_flags; } ;



__attribute__((used)) static bool clp_used_exchangeid(struct nfs4_client *clp)
{
 return clp->cl_exchange_flags != 0;
}
