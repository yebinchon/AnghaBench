
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_dmic {int dummy; } ;


 int OMAP_DMIC_CTRL_REG ;
 int OMAP_DMIC_DMAENABLE_CLR_REG ;
 int OMAP_DMIC_DMA_ENABLE ;
 int OMAP_DMIC_UP_ENABLE_MASK ;
 int omap_dmic_read (struct omap_dmic*,int ) ;
 int omap_dmic_write (struct omap_dmic*,int ,int) ;

__attribute__((used)) static inline void omap_dmic_stop(struct omap_dmic *dmic)
{
 u32 ctrl = omap_dmic_read(dmic, OMAP_DMIC_CTRL_REG);
 omap_dmic_write(dmic, OMAP_DMIC_CTRL_REG,
   ctrl & ~OMAP_DMIC_UP_ENABLE_MASK);


 omap_dmic_write(dmic, OMAP_DMIC_DMAENABLE_CLR_REG,
   OMAP_DMIC_DMA_ENABLE);

}
