
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int vendor_verbs; } ;


 int ENOMEM ;
 unsigned int* snd_array_new (int *) ;

int snd_hdac_regmap_add_vendor_verb(struct hdac_device *codec,
        unsigned int verb)
{
 unsigned int *p = snd_array_new(&codec->vendor_verbs);

 if (!p)
  return -ENOMEM;
 *p = verb | 0x800;
 return 0;
}
