
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfio_irq_info {int index; int flags; int count; } ;
struct mdev_device {int dummy; } ;


 int EINVAL ;
 int VFIO_IRQ_INFO_AUTOMASKED ;
 int VFIO_IRQ_INFO_EVENTFD ;
 int VFIO_IRQ_INFO_MASKABLE ;
 int VFIO_IRQ_INFO_NORESIZE ;




__attribute__((used)) static int mtty_get_irq_info(struct mdev_device *mdev,
        struct vfio_irq_info *irq_info)
{
 switch (irq_info->index) {
 case 130:
 case 129:
 case 128:
  break;

 default:
  return -EINVAL;
 }

 irq_info->flags = VFIO_IRQ_INFO_EVENTFD;
 irq_info->count = 1;

 if (irq_info->index == 130)
  irq_info->flags |= (VFIO_IRQ_INFO_MASKABLE |
    VFIO_IRQ_INFO_AUTOMASKED);
 else
  irq_info->flags |= VFIO_IRQ_INFO_NORESIZE;

 return 0;
}
