
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int dummy; } ;
typedef int hda_nid_t ;


 int AC_VERB_PARAMETERS ;
 int snd_hdac_regmap_encode_verb (int ,int ) ;
 scalar_t__ snd_hdac_regmap_read_raw_uncached (struct hdac_device*,unsigned int,unsigned int*) ;

int snd_hdac_read_parm_uncached(struct hdac_device *codec, hda_nid_t nid,
    int parm)
{
 unsigned int cmd, val;

 cmd = snd_hdac_regmap_encode_verb(nid, AC_VERB_PARAMETERS) | parm;
 if (snd_hdac_regmap_read_raw_uncached(codec, cmd, &val) < 0)
  return -1;
 return val;
}
