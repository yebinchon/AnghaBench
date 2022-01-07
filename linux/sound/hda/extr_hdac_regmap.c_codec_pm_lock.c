
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int dummy; } ;


 int snd_hdac_keep_power_up (struct hdac_device*) ;

__attribute__((used)) static int codec_pm_lock(struct hdac_device *codec)
{
 return snd_hdac_keep_power_up(codec);
}
