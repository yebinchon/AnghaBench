
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sprd_mcdt_dev {int base; } ;


 int readl_relaxed (int) ;
 int writel_relaxed (int,int) ;

__attribute__((used)) static void sprd_mcdt_update(struct sprd_mcdt_dev *mcdt, u32 reg, u32 val,
        u32 mask)
{
 u32 orig = readl_relaxed(mcdt->base + reg);
 u32 tmp;

 tmp = (orig & ~mask) | val;
 writel_relaxed(tmp, mcdt->base + reg);
}
