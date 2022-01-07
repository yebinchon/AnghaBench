
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm3168a_priv {int scki; int supplies; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int clk_disable_unprepare (int ) ;
 struct pcm3168a_priv* dev_get_drvdata (struct device*) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static void pcm3168a_disable(struct device *dev)
{
 struct pcm3168a_priv *pcm3168a = dev_get_drvdata(dev);

 regulator_bulk_disable(ARRAY_SIZE(pcm3168a->supplies),
          pcm3168a->supplies);
 clk_disable_unprepare(pcm3168a->scki);
}
