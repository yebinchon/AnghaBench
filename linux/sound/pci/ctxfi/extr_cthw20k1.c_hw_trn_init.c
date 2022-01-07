
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct trn_conf {unsigned long vm_pgt_phys; } ;
struct hw {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int PTPAHX ;
 int PTPALX ;
 int TRNCTL ;
 int TRNIS ;
 int dev_err (int ,char*) ;
 int hw_write_20kx (struct hw*,int ,int) ;
 int upper_32_bits (unsigned long) ;

__attribute__((used)) static int hw_trn_init(struct hw *hw, const struct trn_conf *info)
{
 u32 trnctl;
 u32 ptp_phys_low, ptp_phys_high;


 if ((~0UL) == info->vm_pgt_phys) {
  dev_err(hw->card->dev,
   "Wrong device page table page address!\n");
  return -1;
 }

 trnctl = 0x13;
 ptp_phys_low = (u32)info->vm_pgt_phys;
 ptp_phys_high = upper_32_bits(info->vm_pgt_phys);
 if (sizeof(void *) == 8)
  trnctl |= (1 << 2);





 hw_write_20kx(hw, PTPALX, ptp_phys_low);
 hw_write_20kx(hw, PTPAHX, ptp_phys_high);
 hw_write_20kx(hw, TRNCTL, trnctl);
 hw_write_20kx(hw, TRNIS, 0x200c01);

 return 0;
}
