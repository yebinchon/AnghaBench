
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct davinci_mcasp {scalar_t__ base; } ;


 int __raw_writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void mcasp_set_reg(struct davinci_mcasp *mcasp, u32 offset,
     u32 val)
{
 __raw_writel(val, mcasp->base + offset);
}
