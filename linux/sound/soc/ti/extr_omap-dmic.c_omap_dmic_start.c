
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_dmic {int ch_enabled; } ;


 int OMAP_DMIC_CTRL_REG ;
 int OMAP_DMIC_DMAENABLE_SET_REG ;
 int OMAP_DMIC_DMA_ENABLE ;
 int omap_dmic_read (struct omap_dmic*,int ) ;
 int omap_dmic_write (struct omap_dmic*,int ,int) ;

__attribute__((used)) static inline void omap_dmic_start(struct omap_dmic *dmic)
{
 u32 ctrl = omap_dmic_read(dmic, OMAP_DMIC_CTRL_REG);


 omap_dmic_write(dmic, OMAP_DMIC_DMAENABLE_SET_REG,
   OMAP_DMIC_DMA_ENABLE);

 omap_dmic_write(dmic, OMAP_DMIC_CTRL_REG, ctrl | dmic->ch_enabled);
}
