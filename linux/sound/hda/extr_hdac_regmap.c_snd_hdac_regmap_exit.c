
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int vendor_verbs; int * regmap; } ;


 int regmap_exit (int *) ;
 int snd_array_free (int *) ;

void snd_hdac_regmap_exit(struct hdac_device *codec)
{
 if (codec->regmap) {
  regmap_exit(codec->regmap);
  codec->regmap = ((void*)0);
  snd_array_free(&codec->vendor_verbs);
 }
}
