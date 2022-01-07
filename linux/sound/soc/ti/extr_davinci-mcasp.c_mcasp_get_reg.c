
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct davinci_mcasp {scalar_t__ base; } ;


 int __raw_readl (scalar_t__) ;

__attribute__((used)) static inline u32 mcasp_get_reg(struct davinci_mcasp *mcasp, u32 offset)
{
 return (u32)__raw_readl(mcasp->base + offset);
}
