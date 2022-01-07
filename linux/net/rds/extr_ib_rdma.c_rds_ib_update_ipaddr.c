
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_ib_device {int dummy; } ;
struct in6_addr {int * s6_addr32; } ;


 int rds_ib_add_ipaddr (struct rds_ib_device*,int ) ;
 int rds_ib_dev_put (struct rds_ib_device*) ;
 struct rds_ib_device* rds_ib_get_device (int ) ;
 int rds_ib_remove_ipaddr (struct rds_ib_device*,int ) ;

int rds_ib_update_ipaddr(struct rds_ib_device *rds_ibdev,
    struct in6_addr *ipaddr)
{
 struct rds_ib_device *rds_ibdev_old;

 rds_ibdev_old = rds_ib_get_device(ipaddr->s6_addr32[3]);
 if (!rds_ibdev_old)
  return rds_ib_add_ipaddr(rds_ibdev, ipaddr->s6_addr32[3]);

 if (rds_ibdev_old != rds_ibdev) {
  rds_ib_remove_ipaddr(rds_ibdev_old, ipaddr->s6_addr32[3]);
  rds_ib_dev_put(rds_ibdev_old);
  return rds_ib_add_ipaddr(rds_ibdev, ipaddr->s6_addr32[3]);
 }
 rds_ib_dev_put(rds_ibdev_old);

 return 0;
}
