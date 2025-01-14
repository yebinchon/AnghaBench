
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_server {int dummy; } ;
struct TYPE_2__ {int type; } ;
struct nfs_delegation {TYPE_1__ stateid; int flags; } ;


 int NFS4_INVALID_STATEID_TYPE ;
 int NFS_DELEGATION_REVOKED ;
 int nfs_mark_return_delegation (struct nfs_server*,struct nfs_delegation*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void nfs_mark_delegation_revoked(struct nfs_server *server,
  struct nfs_delegation *delegation)
{
 set_bit(NFS_DELEGATION_REVOKED, &delegation->flags);
 delegation->stateid.type = NFS4_INVALID_STATEID_TYPE;
 nfs_mark_return_delegation(server, delegation);
}
