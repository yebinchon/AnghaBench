
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int dummy; } ;


 int snd_hdac_power_down_pm (struct hdac_device*) ;

__attribute__((used)) static void codec_pm_unlock(struct hdac_device *codec, int lock)
{
 if (lock == 1)
  snd_hdac_power_down_pm(codec);
}
