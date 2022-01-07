
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm512x_priv {int supplies; int sclk; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int IS_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 struct pcm512x_priv* dev_get_drvdata (struct device*) ;
 int pm_runtime_disable (struct device*) ;
 int regulator_bulk_disable (int ,int ) ;

void pcm512x_remove(struct device *dev)
{
 struct pcm512x_priv *pcm512x = dev_get_drvdata(dev);

 pm_runtime_disable(dev);
 if (!IS_ERR(pcm512x->sclk))
  clk_disable_unprepare(pcm512x->sclk);
 regulator_bulk_disable(ARRAY_SIZE(pcm512x->supplies),
          pcm512x->supplies);
}
