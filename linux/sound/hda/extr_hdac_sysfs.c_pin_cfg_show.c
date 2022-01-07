
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct widget_attribute {int dummy; } ;
struct hdac_device {int dummy; } ;
typedef int ssize_t ;
typedef int hda_nid_t ;


 int AC_VERB_GET_CONFIG_DEFAULT ;
 scalar_t__ AC_WID_PIN ;
 int get_wcaps (struct hdac_device*,int ) ;
 scalar_t__ get_wcaps_type (int ) ;
 scalar_t__ snd_hdac_read (struct hdac_device*,int ,int ,int ,unsigned int*) ;
 int sprintf (char*,char*,unsigned int) ;

__attribute__((used)) static ssize_t pin_cfg_show(struct hdac_device *codec, hda_nid_t nid,
       struct widget_attribute *attr, char *buf)
{
 unsigned int val;

 if (get_wcaps_type(get_wcaps(codec, nid)) != AC_WID_PIN)
  return 0;
 if (snd_hdac_read(codec, nid, AC_VERB_GET_CONFIG_DEFAULT, 0, &val))
  return 0;
 return sprintf(buf, "0x%08x\n", val);
}
