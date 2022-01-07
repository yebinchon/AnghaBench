
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct widget_attribute {int dummy; } ;
struct hdac_device {int dummy; } ;
typedef int ssize_t ;
typedef int hda_nid_t ;


 int ARRAY_SIZE (int*) ;
 int snd_hdac_get_connections (struct hdac_device*,int,int*,int ) ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t connections_show(struct hdac_device *codec, hda_nid_t nid,
    struct widget_attribute *attr, char *buf)
{
 hda_nid_t list[32];
 int i, nconns;
 ssize_t ret = 0;

 nconns = snd_hdac_get_connections(codec, nid, list, ARRAY_SIZE(list));
 if (nconns <= 0)
  return nconns;
 for (i = 0; i < nconns; i++)
  ret += sprintf(buf + ret, "%s0x%02x", i ? " " : "", list[i]);
 ret += sprintf(buf + ret, "\n");
 return ret;
}
