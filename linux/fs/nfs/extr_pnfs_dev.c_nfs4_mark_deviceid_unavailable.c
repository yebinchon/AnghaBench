
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_deviceid_node {int flags; int timestamp_unavailable; } ;


 int NFS_DEVICEID_UNAVAILABLE ;
 int jiffies ;
 int set_bit (int ,int *) ;
 int smp_mb__after_atomic () ;
 int smp_mb__before_atomic () ;

void
nfs4_mark_deviceid_unavailable(struct nfs4_deviceid_node *node)
{
 node->timestamp_unavailable = jiffies;
 smp_mb__before_atomic();
 set_bit(NFS_DEVICEID_UNAVAILABLE, &node->flags);
 smp_mb__after_atomic();
}
