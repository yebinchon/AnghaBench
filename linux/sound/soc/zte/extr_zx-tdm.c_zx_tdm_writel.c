
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct zx_tdm_info {scalar_t__ regbase; } ;


 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static inline void zx_tdm_writel(struct zx_tdm_info *tdm, u16 reg, u32 val)
{
 writel_relaxed(val, tdm->regbase + reg);
}
