
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int afg; } ;
typedef int hda_nid_t ;


 int AC_PAR_STREAM ;
 unsigned int snd_hdac_read_parm (struct hdac_device*,int ,int ) ;

__attribute__((used)) static unsigned int query_stream_param(struct hdac_device *codec, hda_nid_t nid)
{
 unsigned int streams = snd_hdac_read_parm(codec, nid, AC_PAR_STREAM);

 if (!streams || streams == -1)
  streams = snd_hdac_read_parm(codec, codec->afg, AC_PAR_STREAM);
 if (!streams || streams == -1)
  return 0;
 return streams;
}
