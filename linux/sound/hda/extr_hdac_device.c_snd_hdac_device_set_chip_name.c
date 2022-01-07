
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {char* chip_name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (char*) ;
 char* kstrdup (char const*,int ) ;

int snd_hdac_device_set_chip_name(struct hdac_device *codec, const char *name)
{
 char *newname;

 if (!name)
  return 0;
 newname = kstrdup(name, GFP_KERNEL);
 if (!newname)
  return -ENOMEM;
 kfree(codec->chip_name);
 codec->chip_name = newname;
 return 0;
}
