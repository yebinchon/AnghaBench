
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct es8316_priv {int mclk; struct snd_soc_component* component; } ;


 int ES8316_CLKMGR_ADCOSR ;
 int ES8316_RESET ;
 int ES8316_RESET_CSM_ON ;
 int ES8316_SYS_VMIDSEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*) ;
 int devm_clk_get_optional (int ,char*) ;
 int msleep (int) ;
 struct es8316_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int es8316_probe(struct snd_soc_component *component)
{
 struct es8316_priv *es8316 = snd_soc_component_get_drvdata(component);
 int ret;

 es8316->component = component;

 es8316->mclk = devm_clk_get_optional(component->dev, "mclk");
 if (IS_ERR(es8316->mclk)) {
  dev_err(component->dev, "unable to get mclk\n");
  return PTR_ERR(es8316->mclk);
 }
 if (!es8316->mclk)
  dev_warn(component->dev, "assuming static mclk\n");

 ret = clk_prepare_enable(es8316->mclk);
 if (ret) {
  dev_err(component->dev, "unable to enable mclk\n");
  return ret;
 }


 snd_soc_component_write(component, ES8316_RESET, 0x3f);
 usleep_range(5000, 5500);
 snd_soc_component_write(component, ES8316_RESET, ES8316_RESET_CSM_ON);
 msleep(30);





 snd_soc_component_write(component, ES8316_SYS_VMIDSEL, 0xff);






 snd_soc_component_write(component, ES8316_CLKMGR_ADCOSR, 0x32);

 return 0;
}
