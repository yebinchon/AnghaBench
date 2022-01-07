
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct axg_tdm_formatter {int * stream; int pclk; } ;


 int axg_tdm_formatter_dettach (struct axg_tdm_formatter*) ;
 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void axg_tdm_formatter_power_down(struct axg_tdm_formatter *formatter)
{
 axg_tdm_formatter_dettach(formatter);
 clk_disable_unprepare(formatter->pclk);
 formatter->stream = ((void*)0);
}
