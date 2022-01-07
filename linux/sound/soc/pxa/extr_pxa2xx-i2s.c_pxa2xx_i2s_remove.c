
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;


 int ENOENT ;
 int ERR_PTR (int ) ;
 int clk_i2s ;
 int clk_put (int ) ;

__attribute__((used)) static int pxa2xx_i2s_remove(struct snd_soc_dai *dai)
{
 clk_put(clk_i2s);
 clk_i2s = ERR_PTR(-ENOENT);
 return 0;
}
