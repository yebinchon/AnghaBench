
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_hw {int dummy; } ;


 long DIV_ROUND_UP (unsigned long,unsigned long) ;
 long EINVAL ;

__attribute__((used)) static long clk_aic32x4_div_round_rate(struct clk_hw *hw, unsigned long rate,
    unsigned long *parent_rate)
{
 unsigned long divisor;

 divisor = DIV_ROUND_UP(*parent_rate, rate);
 if (divisor > 128)
  return -EINVAL;

 return DIV_ROUND_UP(*parent_rate, divisor);
}
