
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct s3c_i2sv2_info {int * iis_pclk; } ;


 int clk_disable_unprepare (int *) ;
 int clk_put (int *) ;

void s3c_i2sv2_cleanup(struct snd_soc_dai *dai,
        struct s3c_i2sv2_info *i2s)
{
 clk_disable_unprepare(i2s->iis_pclk);
 clk_put(i2s->iis_pclk);
 i2s->iis_pclk = ((void*)0);
}
