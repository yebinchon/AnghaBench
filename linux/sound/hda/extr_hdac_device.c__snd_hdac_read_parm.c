
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int dummy; } ;
typedef int hda_nid_t ;


 int AC_VERB_PARAMETERS ;
 int snd_hdac_regmap_encode_verb (int ,int ) ;
 int snd_hdac_regmap_read_raw (struct hdac_device*,unsigned int,unsigned int*) ;

int _snd_hdac_read_parm(struct hdac_device *codec, hda_nid_t nid, int parm,
   unsigned int *res)
{
 unsigned int cmd;

 cmd = snd_hdac_regmap_encode_verb(nid, AC_VERB_PARAMETERS) | parm;
 return snd_hdac_regmap_read_raw(codec, cmd, res);
}
