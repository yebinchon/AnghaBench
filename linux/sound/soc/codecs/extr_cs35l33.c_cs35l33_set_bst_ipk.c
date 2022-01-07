
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct cs35l33_private {int regmap; } ;


 int CS35L33_BST_PEAK_CTL ;
 int EINVAL ;
 int dev_err (int ,char*,unsigned int) ;
 int regmap_write (int ,int ,int) ;
 struct cs35l33_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int cs35l33_set_bst_ipk(struct snd_soc_component *component, unsigned int bst)
{
 struct cs35l33_private *cs35l33 = snd_soc_component_get_drvdata(component);
 int ret = 0, steps = 0;


 if (bst > 3600000 || bst < 1850000) {
  dev_err(component->dev, "Invalid boost current %d\n", bst);
  ret = -EINVAL;
  goto err;
 }

 if (bst % 15625) {
  dev_err(component->dev, "Current not a multiple of 15625uA (%d)\n",
   bst);
  ret = -EINVAL;
  goto err;
 }

 while (bst > 1850000) {
  bst -= 15625;
  steps++;
 }

 regmap_write(cs35l33->regmap, CS35L33_BST_PEAK_CTL,
  steps+0x70);

err:
 return ret;
}
