
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct img_spdif_in {int * aclkgen_regs; } ;


 scalar_t__ IMG_SPDIF_IN_ACLKGEN_START ;
 int img_spdif_in_writel (struct img_spdif_in*,int ,scalar_t__) ;

__attribute__((used)) static inline void img_spdif_in_aclkgen_writel(struct img_spdif_in *spdif,
      u32 index)
{
 img_spdif_in_writel(spdif, spdif->aclkgen_regs[index],
   IMG_SPDIF_IN_ACLKGEN_START + (index * 0x4));
}
