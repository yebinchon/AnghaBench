
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mdev_state {int bar_mask; int* vconfig; int mdev; } ;
struct device {int dummy; } ;



 int PCI_BASE_ADDRESS_MEM_MASK ;
 int STORE_LE32 (int*,int) ;
 int dev_info (struct device*,char*,int) ;
 struct device* mdev_dev (int ) ;

__attribute__((used)) static void handle_pci_cfg_write(struct mdev_state *mdev_state, u16 offset,
     char *buf, u32 count)
{
 struct device *dev = mdev_dev(mdev_state->mdev);
 u32 cfg_addr;

 switch (offset) {
 case 128:
  cfg_addr = *(u32 *)buf;

  if (cfg_addr == 0xffffffff) {
   cfg_addr = (cfg_addr & mdev_state->bar_mask);
  } else {
   cfg_addr &= PCI_BASE_ADDRESS_MEM_MASK;
   if (cfg_addr)
    dev_info(dev, "BAR0 @ 0x%x\n", cfg_addr);
  }

  cfg_addr |= (mdev_state->vconfig[offset] &
        ~PCI_BASE_ADDRESS_MEM_MASK);
  STORE_LE32(&mdev_state->vconfig[offset], cfg_addr);
  break;
 }
}
