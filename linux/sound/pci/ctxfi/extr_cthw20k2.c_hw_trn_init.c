
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct trn_conf {unsigned long vm_pgt_phys; } ;
struct hw {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ TRANSPORT_CTL ;
 scalar_t__ TRANSPORT_ENB ;
 scalar_t__ TRANSPORT_INT ;
 scalar_t__ VMEM_CTL ;
 scalar_t__ VMEM_PTPAH ;
 scalar_t__ VMEM_PTPAL ;
 int dev_alert (int ,char*) ;
 int hw_read_20kx (struct hw*,scalar_t__) ;
 int hw_write_20kx (struct hw*,scalar_t__,int) ;
 int upper_32_bits (unsigned long) ;

__attribute__((used)) static int hw_trn_init(struct hw *hw, const struct trn_conf *info)
{
 u32 vmctl, data;
 u32 ptp_phys_low, ptp_phys_high;
 int i;


 if ((~0UL) == info->vm_pgt_phys) {
  dev_alert(hw->card->dev,
     "Wrong device page table page address!!!\n");
  return -1;
 }

 vmctl = 0x80000C0F;
 ptp_phys_low = (u32)info->vm_pgt_phys;
 ptp_phys_high = upper_32_bits(info->vm_pgt_phys);
 if (sizeof(void *) == 8)
  vmctl |= (3 << 8);

 for (i = 0; i < 64; i++) {
  hw_write_20kx(hw, VMEM_PTPAL+(16*i), ptp_phys_low);
  hw_write_20kx(hw, VMEM_PTPAH+(16*i), ptp_phys_high);
 }

 hw_write_20kx(hw, VMEM_CTL, vmctl);

 hw_write_20kx(hw, TRANSPORT_CTL, 0x03);
 hw_write_20kx(hw, TRANSPORT_INT, 0x200c01);

 data = hw_read_20kx(hw, TRANSPORT_ENB);
 hw_write_20kx(hw, TRANSPORT_ENB, (data | 0x03));

 return 0;
}
