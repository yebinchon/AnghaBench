
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct smc_ib_device {int * mac; int ibdev; } ;
struct ib_gid_attr {int dummy; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (struct ib_gid_attr const*) ;
 struct ib_gid_attr* rdma_get_gid_attr (int ,int,int ) ;
 int rdma_put_gid_attr (struct ib_gid_attr const*) ;
 int rdma_read_gid_l2_fields (struct ib_gid_attr const*,int *,int ) ;

__attribute__((used)) static int smc_ib_fill_mac(struct smc_ib_device *smcibdev, u8 ibport)
{
 const struct ib_gid_attr *attr;
 int rc;

 attr = rdma_get_gid_attr(smcibdev->ibdev, ibport, 0);
 if (IS_ERR(attr))
  return -ENODEV;

 rc = rdma_read_gid_l2_fields(attr, ((void*)0), smcibdev->mac[ibport - 1]);
 rdma_put_gid_attr(attr);
 return rc;
}
