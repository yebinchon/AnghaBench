
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct widget_attribute {int dummy; } ;
struct hdac_device {int dummy; } ;
typedef int ssize_t ;
typedef int hda_nid_t ;


 int AC_PAR_STREAM ;
 int has_pcm_cap (struct hdac_device*,int ) ;
 int snd_hdac_read_parm (struct hdac_device*,int ,int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t pcm_formats_show(struct hdac_device *codec, hda_nid_t nid,
    struct widget_attribute *attr, char *buf)
{
 if (!has_pcm_cap(codec, nid))
  return 0;
 return sprintf(buf, "0x%08x\n",
         snd_hdac_read_parm(codec, nid, AC_PAR_STREAM));
}
