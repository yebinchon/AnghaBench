
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_delegation {int * cred; } ;


 int kfree_rcu (struct nfs_delegation*,int ) ;
 int put_cred (int *) ;
 int rcu ;

__attribute__((used)) static void nfs_free_delegation(struct nfs_delegation *delegation)
{
 put_cred(delegation->cred);
 delegation->cred = ((void*)0);
 kfree_rcu(delegation, rcu);
}
