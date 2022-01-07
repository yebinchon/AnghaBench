
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct clk_bulk_data {char* id; } ;
typedef enum snd_soc_bias_level { ____Placeholder_snd_soc_bias_level } snd_soc_bias_level ;


 int ARRAY_SIZE (struct clk_bulk_data*) ;




 int clk_bulk_disable_unprepare (int ,struct clk_bulk_data*) ;
 int clk_bulk_prepare_enable (int ,struct clk_bulk_data*) ;
 int dev_err (int ,char*) ;
 int devm_clk_bulk_get (int ,int ,struct clk_bulk_data*) ;
 int snd_soc_component_get_bias_level (struct snd_soc_component*) ;

__attribute__((used)) static int aic32x4_set_bias_level(struct snd_soc_component *component,
      enum snd_soc_bias_level level)
{
 int ret;

 struct clk_bulk_data clocks[] = {
  { .id = "madc" },
  { .id = "mdac" },
  { .id = "bdiv" },
 };

 ret = devm_clk_bulk_get(component->dev, ARRAY_SIZE(clocks), clocks);
 if (ret)
  return ret;

 switch (level) {
 case 130:
  ret = clk_bulk_prepare_enable(ARRAY_SIZE(clocks), clocks);
  if (ret) {
   dev_err(component->dev, "Failed to enable clocks\n");
   return ret;
  }
  break;
 case 129:
  break;
 case 128:

  if (snd_soc_component_get_bias_level(component) == 131)
   break;

  clk_bulk_disable_unprepare(ARRAY_SIZE(clocks), clocks);
  break;
 case 131:
  break;
 }
 return 0;
}
