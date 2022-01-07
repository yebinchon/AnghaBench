
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_deviceid_node {int flags; int timestamp_unavailable; } ;


 int NFS_DEVICEID_UNAVAILABLE ;
 unsigned long PNFS_DEVICE_RETRY_TIMEOUT ;
 int clear_bit (int ,int *) ;
 unsigned long jiffies ;
 int smp_mb__after_atomic () ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ time_in_range (int ,unsigned long,unsigned long) ;

bool
nfs4_test_deviceid_unavailable(struct nfs4_deviceid_node *node)
{
 if (test_bit(NFS_DEVICEID_UNAVAILABLE, &node->flags)) {
  unsigned long start, end;

  end = jiffies;
  start = end - PNFS_DEVICE_RETRY_TIMEOUT;
  if (time_in_range(node->timestamp_unavailable, start, end))
   return 1;
  clear_bit(NFS_DEVICEID_UNAVAILABLE, &node->flags);
  smp_mb__after_atomic();
 }
 return 0;
}
