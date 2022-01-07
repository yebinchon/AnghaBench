
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct widget_attribute {int dummy; } ;
struct hdac_device {int dummy; } ;
typedef int ssize_t ;
typedef int hda_nid_t ;


 int get_wcaps (struct hdac_device*,int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t caps_show(struct hdac_device *codec, hda_nid_t nid,
   struct widget_attribute *attr, char *buf)
{
 return sprintf(buf, "0x%08x\n", get_wcaps(codec, nid));
}
