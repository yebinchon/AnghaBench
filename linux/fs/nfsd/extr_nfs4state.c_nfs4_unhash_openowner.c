
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_stateowner {int dummy; } ;


 int openowner (struct nfs4_stateowner*) ;
 int unhash_openowner_locked (int ) ;

__attribute__((used)) static void nfs4_unhash_openowner(struct nfs4_stateowner *so)
{
 unhash_openowner_locked(openowner(so));
}
