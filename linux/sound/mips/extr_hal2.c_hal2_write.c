
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __raw_writel (int ,int *) ;

__attribute__((used)) static inline void hal2_write(u32 val, u32 *reg)
{
 __raw_writel(val, reg);
}
