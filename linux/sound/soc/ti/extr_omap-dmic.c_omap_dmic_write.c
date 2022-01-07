
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct omap_dmic {scalar_t__ io_base; } ;


 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static inline void omap_dmic_write(struct omap_dmic *dmic, u16 reg, u32 val)
{
 writel_relaxed(val, dmic->io_base + reg);
}
