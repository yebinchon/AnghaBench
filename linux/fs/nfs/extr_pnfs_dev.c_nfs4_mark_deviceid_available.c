
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_deviceid_node {int flags; } ;


 int NFS_DEVICEID_UNAVAILABLE ;
 int clear_bit (int ,int *) ;
 int smp_mb__after_atomic () ;
 scalar_t__ test_bit (int ,int *) ;

void
nfs4_mark_deviceid_available(struct nfs4_deviceid_node *node)
{
 if (test_bit(NFS_DEVICEID_UNAVAILABLE, &node->flags)) {
  clear_bit(NFS_DEVICEID_UNAVAILABLE, &node->flags);
  smp_mb__after_atomic();
 }
}
