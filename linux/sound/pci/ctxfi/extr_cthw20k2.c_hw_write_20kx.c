
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hw {scalar_t__ mem_base; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void hw_write_20kx(struct hw *hw, u32 reg, u32 data)
{
 writel(data, hw->mem_base + reg);
}
