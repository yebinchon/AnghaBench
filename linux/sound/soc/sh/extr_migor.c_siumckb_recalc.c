
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 unsigned long codec_freq ;

__attribute__((used)) static unsigned long siumckb_recalc(struct clk *clk)
{
 return codec_freq;
}
