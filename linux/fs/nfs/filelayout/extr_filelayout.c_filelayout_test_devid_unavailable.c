
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_deviceid_node {int dummy; } ;


 scalar_t__ filelayout_test_devid_invalid (struct nfs4_deviceid_node*) ;
 scalar_t__ nfs4_test_deviceid_unavailable (struct nfs4_deviceid_node*) ;

bool
filelayout_test_devid_unavailable(struct nfs4_deviceid_node *node)
{
 return filelayout_test_devid_invalid(node) ||
  nfs4_test_deviceid_unavailable(node);
}
