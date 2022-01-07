
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_device_info {int num_irqs; int num_regions; int flags; } ;
struct mdev_device {int dummy; } ;


 int VFIO_DEVICE_FLAGS_PCI ;
 int VFIO_PCI_NUM_IRQS ;
 int VFIO_PCI_NUM_REGIONS ;

__attribute__((used)) static int mdpy_get_device_info(struct mdev_device *mdev,
    struct vfio_device_info *dev_info)
{
 dev_info->flags = VFIO_DEVICE_FLAGS_PCI;
 dev_info->num_regions = VFIO_PCI_NUM_REGIONS;
 dev_info->num_irqs = VFIO_PCI_NUM_IRQS;
 return 0;
}
