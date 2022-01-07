
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_client {int dummy; } ;


 int __destroy_client (struct nfs4_client*) ;
 int unhash_client (struct nfs4_client*) ;

__attribute__((used)) static void
destroy_client(struct nfs4_client *clp)
{
 unhash_client(clp);
 __destroy_client(clp);
}
