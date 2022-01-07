
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_delegation {int type; int flags; } ;
typedef int fmode_t ;


 int NFS_DELEGATION_RETURNING ;
 int NFS_DELEGATION_REVOKED ;
 int test_bit (int ,int *) ;

__attribute__((used)) static bool
nfs4_is_valid_delegation(const struct nfs_delegation *delegation,
  fmode_t flags)
{
 if (delegation != ((void*)0) && (delegation->type & flags) == flags &&
     !test_bit(NFS_DELEGATION_REVOKED, &delegation->flags) &&
     !test_bit(NFS_DELEGATION_RETURNING, &delegation->flags))
  return 1;
 return 0;
}
