
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_stateowner {int dummy; } ;


 int lockowner (struct nfs4_stateowner*) ;
 int unhash_lockowner_locked (int ) ;

__attribute__((used)) static void nfs4_unhash_lockowner(struct nfs4_stateowner *sop)
{
 unhash_lockowner_locked(lockowner(sop));
}
