
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct widget_attribute {int dummy; } ;
struct hdac_device {int dummy; } ;
typedef int ssize_t ;
typedef int hda_nid_t ;


 int AC_PAR_PIN_CAP ;
 scalar_t__ AC_WID_PIN ;
 int get_wcaps (struct hdac_device*,int ) ;
 scalar_t__ get_wcaps_type (int ) ;
 int snd_hdac_read_parm (struct hdac_device*,int ,int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t pin_caps_show(struct hdac_device *codec, hda_nid_t nid,
        struct widget_attribute *attr, char *buf)
{
 if (get_wcaps_type(get_wcaps(codec, nid)) != AC_WID_PIN)
  return 0;
 return sprintf(buf, "0x%08x\n",
         snd_hdac_read_parm(codec, nid, AC_PAR_PIN_CAP));
}
