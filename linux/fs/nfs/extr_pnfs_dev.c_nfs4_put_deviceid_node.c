
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs4_deviceid_node {TYPE_1__* ld; int ref; int deviceid; int nfs_client; int flags; } ;
struct TYPE_2__ {int (* free_deviceid_node ) (struct nfs4_deviceid_node*) ;} ;


 int NFS_DEVICEID_NOCACHE ;
 scalar_t__ atomic_add_unless (int *,int,int) ;
 int atomic_dec_and_test (int *) ;
 int nfs4_delete_deviceid (TYPE_1__*,int ,int *) ;
 int stub1 (struct nfs4_deviceid_node*) ;
 scalar_t__ test_bit (int ,int *) ;

bool
nfs4_put_deviceid_node(struct nfs4_deviceid_node *d)
{
 if (test_bit(NFS_DEVICEID_NOCACHE, &d->flags)) {
  if (atomic_add_unless(&d->ref, -1, 2))
   return 0;
  nfs4_delete_deviceid(d->ld, d->nfs_client, &d->deviceid);
 }
 if (!atomic_dec_and_test(&d->ref))
  return 0;
 d->ld->free_deviceid_node(d);
 return 1;
}
