
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct omap_dmic {scalar_t__ io_base; } ;


 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static inline int omap_dmic_read(struct omap_dmic *dmic, u16 reg)
{
 return readl_relaxed(dmic->io_base + reg);
}
