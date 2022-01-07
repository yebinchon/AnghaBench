
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_ib_device {int * vector_load; } ;



__attribute__((used)) static inline void ibdev_put_vector(struct rds_ib_device *rds_ibdev, int index)
{
 rds_ibdev->vector_load[index]--;
}
