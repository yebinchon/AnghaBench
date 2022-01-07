
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int dummy; } ;
typedef int hda_nid_t ;


 int snd_hdac_exec_verb (struct hdac_device*,unsigned int,int ,unsigned int*) ;
 unsigned int snd_hdac_make_cmd (struct hdac_device*,int ,unsigned int,unsigned int) ;

int snd_hdac_read(struct hdac_device *codec, hda_nid_t nid,
    unsigned int verb, unsigned int parm, unsigned int *res)
{
 unsigned int cmd = snd_hdac_make_cmd(codec, nid, verb, parm);

 return snd_hdac_exec_verb(codec, cmd, 0, res);
}
