
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct mdev_state {TYPE_1__* region_info; scalar_t__ vconfig; } ;
struct TYPE_2__ {int start; int size; } ;


 int PCI_BASE_ADDRESS_0 ;
 int PCI_BASE_ADDRESS_MEM_MASK ;



 int PCI_BASE_ADDRESS_MEM_TYPE_MASK ;
 int VFIO_PCI_BAR5_REGION_INDEX ;

__attribute__((used)) static void mdev_read_base(struct mdev_state *mdev_state)
{
 int index, pos;
 u32 start_lo, start_hi;
 u32 mem_type;

 pos = PCI_BASE_ADDRESS_0;

 for (index = 0; index <= VFIO_PCI_BAR5_REGION_INDEX; index++) {

  if (!mdev_state->region_info[index].size)
   continue;

  start_lo = (*(u32 *)(mdev_state->vconfig + pos)) &
   PCI_BASE_ADDRESS_MEM_MASK;
  mem_type = (*(u32 *)(mdev_state->vconfig + pos)) &
   PCI_BASE_ADDRESS_MEM_TYPE_MASK;

  switch (mem_type) {
  case 128:
   start_hi = (*(u32 *)(mdev_state->vconfig + pos + 4));
   pos += 4;
   break;
  case 129:
  case 130:

  default:

   start_hi = 0;
   break;
  }
  pos += 4;
  mdev_state->region_info[index].start = ((u64)start_hi << 32) |
       start_lo;
 }
}
