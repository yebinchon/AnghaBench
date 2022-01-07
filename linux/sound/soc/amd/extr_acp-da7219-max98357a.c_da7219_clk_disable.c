
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clk_disable_unprepare (int ) ;
 int da7219_dai_bclk ;

__attribute__((used)) static void da7219_clk_disable(void)
{
 clk_disable_unprepare(da7219_dai_bclk);
}
