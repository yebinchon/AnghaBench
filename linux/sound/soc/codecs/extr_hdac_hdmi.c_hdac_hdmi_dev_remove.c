
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int addr; int bus; } ;


 int clear_dapm_works (struct hdac_device*) ;
 int snd_hdac_display_power (int ,int ,int) ;

__attribute__((used)) static int hdac_hdmi_dev_remove(struct hdac_device *hdev)
{
 clear_dapm_works(hdev);
 snd_hdac_display_power(hdev->bus, hdev->addr, 0);

 return 0;
}
