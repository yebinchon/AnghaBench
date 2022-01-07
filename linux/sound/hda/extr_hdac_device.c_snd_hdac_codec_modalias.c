
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int vendor_id; int revision_id; int type; } ;


 int snprintf (char*,size_t,char*,int,int,int) ;

int snd_hdac_codec_modalias(struct hdac_device *codec, char *buf, size_t size)
{
 return snprintf(buf, size, "hdaudio:v%08Xr%08Xa%02X\n",
   codec->vendor_id, codec->revision_id, codec->type);
}
