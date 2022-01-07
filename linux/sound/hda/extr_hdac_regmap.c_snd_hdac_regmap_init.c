
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct hdac_device {int vendor_verbs; struct regmap* regmap; int dev; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int hda_regmap_cfg ;
 struct regmap* regmap_init (int *,int *,struct hdac_device*,int *) ;
 int snd_array_init (int *,int,int) ;

int snd_hdac_regmap_init(struct hdac_device *codec)
{
 struct regmap *regmap;

 regmap = regmap_init(&codec->dev, ((void*)0), codec, &hda_regmap_cfg);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);
 codec->regmap = regmap;
 snd_array_init(&codec->vendor_verbs, sizeof(unsigned int), 8);
 return 0;
}
