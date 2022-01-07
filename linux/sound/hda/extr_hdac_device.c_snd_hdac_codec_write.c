
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int dummy; } ;
typedef int hda_nid_t ;


 int codec_write (struct hdac_device*,int ,int,unsigned int,unsigned int) ;

int snd_hdac_codec_write(struct hdac_device *hdac, hda_nid_t nid,
   int flags, unsigned int verb, unsigned int parm)
{
 return codec_write(hdac, nid, flags, verb, parm);
}
