
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_server {TYPE_1__* nfs_client; } ;
struct nfs_delegation {int flags; } ;
struct TYPE_2__ {int cl_state; } ;


 int NFS4CLNT_DELEGRETURN ;
 int NFS_DELEGATION_RETURN ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void nfs_mark_return_delegation(struct nfs_server *server,
  struct nfs_delegation *delegation)
{
 set_bit(NFS_DELEGATION_RETURN, &delegation->flags);
 set_bit(NFS4CLNT_DELEGRETURN, &server->nfs_client->cl_state);
}
