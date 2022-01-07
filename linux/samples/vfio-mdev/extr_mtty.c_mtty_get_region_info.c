
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct vfio_region_info {int index; unsigned int size; int flags; void* offset; } ;
struct mdev_state {int nr_ports; int ops_lock; TYPE_1__* region_info; } ;
struct mdev_device {int dummy; } ;
struct TYPE_2__ {unsigned int size; void* vfio_offset; } ;


 int EINVAL ;
 unsigned int MTTY_CONFIG_SPACE_SIZE ;
 unsigned int MTTY_IO_BAR_SIZE ;
 void* MTTY_VFIO_PCI_INDEX_TO_OFFSET (int) ;



 int VFIO_PCI_NUM_REGIONS ;
 int VFIO_REGION_INFO_FLAG_READ ;
 int VFIO_REGION_INFO_FLAG_WRITE ;
 struct mdev_state* mdev_get_drvdata (struct mdev_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mtty_get_region_info(struct mdev_device *mdev,
    struct vfio_region_info *region_info,
    u16 *cap_type_id, void **cap_type)
{
 unsigned int size = 0;
 struct mdev_state *mdev_state;
 u32 bar_index;

 if (!mdev)
  return -EINVAL;

 mdev_state = mdev_get_drvdata(mdev);
 if (!mdev_state)
  return -EINVAL;

 bar_index = region_info->index;
 if (bar_index >= VFIO_PCI_NUM_REGIONS)
  return -EINVAL;

 mutex_lock(&mdev_state->ops_lock);

 switch (bar_index) {
 case 128:
  size = MTTY_CONFIG_SPACE_SIZE;
  break;
 case 130:
  size = MTTY_IO_BAR_SIZE;
  break;
 case 129:
  if (mdev_state->nr_ports == 2)
   size = MTTY_IO_BAR_SIZE;
  break;
 default:
  size = 0;
  break;
 }

 mdev_state->region_info[bar_index].size = size;
 mdev_state->region_info[bar_index].vfio_offset =
  MTTY_VFIO_PCI_INDEX_TO_OFFSET(bar_index);

 region_info->size = size;
 region_info->offset = MTTY_VFIO_PCI_INDEX_TO_OFFSET(bar_index);
 region_info->flags = VFIO_REGION_INFO_FLAG_READ |
  VFIO_REGION_INFO_FLAG_WRITE;
 mutex_unlock(&mdev_state->ops_lock);
 return 0;
}
