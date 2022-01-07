
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_deviceid_node {int flags; } ;


 int NFS_DEVICEID_INVALID ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline bool
filelayout_test_devid_invalid(struct nfs4_deviceid_node *node)
{
 return test_bit(NFS_DEVICEID_INVALID, &node->flags);
}
