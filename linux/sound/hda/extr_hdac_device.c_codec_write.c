
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int dummy; } ;
typedef int hda_nid_t ;


 int snd_hdac_exec_verb (struct hdac_device*,unsigned int,int,int *) ;
 unsigned int snd_hdac_make_cmd (struct hdac_device*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static int codec_write(struct hdac_device *hdac, hda_nid_t nid,
   int flags, unsigned int verb, unsigned int parm)
{
 unsigned int cmd = snd_hdac_make_cmd(hdac, nid, verb, parm);

 return snd_hdac_exec_verb(hdac, cmd, flags, ((void*)0));
}
