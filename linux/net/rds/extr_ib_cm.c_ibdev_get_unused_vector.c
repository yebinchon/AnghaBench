
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rds_ib_device {int* vector_load; TYPE_1__* dev; } ;
struct TYPE_2__ {int num_comp_vectors; } ;



__attribute__((used)) static inline int ibdev_get_unused_vector(struct rds_ib_device *rds_ibdev)
{
 int min = rds_ibdev->vector_load[rds_ibdev->dev->num_comp_vectors - 1];
 int index = rds_ibdev->dev->num_comp_vectors - 1;
 int i;

 for (i = rds_ibdev->dev->num_comp_vectors - 1; i >= 0; i--) {
  if (rds_ibdev->vector_load[i] < min) {
   index = i;
   min = rds_ibdev->vector_load[i];
  }
 }

 rds_ibdev->vector_load[index]++;
 return index;
}
