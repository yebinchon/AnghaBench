
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct hi6210_i2s {int clocks; int sysctrl; int * clk; } ;


 int BIT (int) ;
 int SC_PERIPH_RSTEN1 ;
 int clk_disable_unprepare (int ) ;
 struct hi6210_i2s* dev_get_drvdata (int ) ;
 int regmap_write (int ,int ,int ) ;

__attribute__((used)) static void hi6210_i2s_shutdown(struct snd_pcm_substream *substream,
    struct snd_soc_dai *cpu_dai)
{
 struct hi6210_i2s *i2s = dev_get_drvdata(cpu_dai->dev);
 int n;

 for (n = 0; n < i2s->clocks; n++)
  clk_disable_unprepare(i2s->clk[n]);

 regmap_write(i2s->sysctrl, SC_PERIPH_RSTEN1, BIT(5));
}
