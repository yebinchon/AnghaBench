
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_irq_info {scalar_t__ count; } ;
struct mdev_device {int dummy; } ;



__attribute__((used)) static int mdpy_get_irq_info(struct mdev_device *mdev,
        struct vfio_irq_info *irq_info)
{
 irq_info->count = 0;
 return 0;
}
