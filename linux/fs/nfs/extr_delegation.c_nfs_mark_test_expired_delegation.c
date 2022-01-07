
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nfs_server {TYPE_2__* nfs_client; } ;
struct TYPE_3__ {scalar_t__ type; } ;
struct nfs_delegation {int flags; TYPE_1__ stateid; } ;
struct TYPE_4__ {int cl_state; } ;


 int NFS4CLNT_DELEGATION_EXPIRED ;
 scalar_t__ NFS4_INVALID_STATEID_TYPE ;
 int NFS_DELEGATION_NEED_RECLAIM ;
 int NFS_DELEGATION_TEST_EXPIRED ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void nfs_mark_test_expired_delegation(struct nfs_server *server,
     struct nfs_delegation *delegation)
{
 if (delegation->stateid.type == NFS4_INVALID_STATEID_TYPE)
  return;
 clear_bit(NFS_DELEGATION_NEED_RECLAIM, &delegation->flags);
 set_bit(NFS_DELEGATION_TEST_EXPIRED, &delegation->flags);
 set_bit(NFS4CLNT_DELEGATION_EXPIRED, &server->nfs_client->cl_state);
}
