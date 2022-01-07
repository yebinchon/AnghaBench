
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dmic {int dummy; } ;


 int OMAP_DMIC_CTRL_REG ;
 int OMAP_DMIC_UP_ENABLE_MASK ;
 int omap_dmic_read (struct omap_dmic*,int ) ;

__attribute__((used)) static inline int dmic_is_enabled(struct omap_dmic *dmic)
{
 return omap_dmic_read(dmic, OMAP_DMIC_CTRL_REG) &
      OMAP_DMIC_UP_ENABLE_MASK;
}
