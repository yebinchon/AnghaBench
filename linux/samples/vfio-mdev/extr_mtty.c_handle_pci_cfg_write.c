
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct mdev_state {int* vconfig; int nr_ports; int* bar_mask; } ;


 int STORE_LE32 (int*,int) ;
 int pr_info (char*,int,int) ;

__attribute__((used)) static void handle_pci_cfg_write(struct mdev_state *mdev_state, u16 offset,
     u8 *buf, u32 count)
{
 u32 cfg_addr, bar_mask, bar_index = 0;

 switch (offset) {
 case 0x04:
 case 0x06:

  break;
 case 0x3c:
  mdev_state->vconfig[0x3c] = buf[0];
  break;
 case 0x3d:




  break;
 case 0x10:
 case 0x14:
  if (offset == 0x10)
   bar_index = 0;
  else if (offset == 0x14)
   bar_index = 1;

  if ((mdev_state->nr_ports == 1) && (bar_index == 1)) {
   STORE_LE32(&mdev_state->vconfig[offset], 0);
   break;
  }

  cfg_addr = *(u32 *)buf;
  pr_info("BAR%d addr 0x%x\n", bar_index, cfg_addr);

  if (cfg_addr == 0xffffffff) {
   bar_mask = mdev_state->bar_mask[bar_index];
   cfg_addr = (cfg_addr & bar_mask);
  }

  cfg_addr |= (mdev_state->vconfig[offset] & 0x3ul);
  STORE_LE32(&mdev_state->vconfig[offset], cfg_addr);
  break;
 case 0x18:
 case 0x1c:
 case 0x20:
  STORE_LE32(&mdev_state->vconfig[offset], 0);
  break;
 default:
  pr_info("PCI config write @0x%x of %d bytes not handled\n",
   offset, count);
  break;
 }
}
