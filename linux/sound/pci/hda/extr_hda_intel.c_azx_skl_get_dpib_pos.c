
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int index; } ;
struct azx_dev {TYPE_1__ core; } ;
struct azx {int dummy; } ;


 scalar_t__ AZX_REG_VS_SDXDPIB_XBASE ;
 int AZX_REG_VS_SDXDPIB_XINTERVAL ;
 unsigned int _snd_hdac_chip_readl (int ,scalar_t__) ;
 int azx_bus (struct azx*) ;

__attribute__((used)) static unsigned int azx_skl_get_dpib_pos(struct azx *chip,
      struct azx_dev *azx_dev)
{
 return _snd_hdac_chip_readl(azx_bus(chip),
        AZX_REG_VS_SDXDPIB_XBASE +
        (AZX_REG_VS_SDXDPIB_XINTERVAL *
         azx_dev->core.index));
}
