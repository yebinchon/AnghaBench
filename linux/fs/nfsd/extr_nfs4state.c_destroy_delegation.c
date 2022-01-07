
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_delegation {int dummy; } ;


 int destroy_unhashed_deleg (struct nfs4_delegation*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int state_lock ;
 int unhash_delegation_locked (struct nfs4_delegation*) ;

__attribute__((used)) static void destroy_delegation(struct nfs4_delegation *dp)
{
 bool unhashed;

 spin_lock(&state_lock);
 unhashed = unhash_delegation_locked(dp);
 spin_unlock(&state_lock);
 if (unhashed)
  destroy_unhashed_deleg(dp);
}
