
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_oss_arg {struct snd_emux_port* private_data; } ;
struct snd_emux_port {struct snd_emux* emu; } ;
struct snd_emux {int memhdr; int sflist; } ;


 int ENXIO ;


 scalar_t__ snd_BUG_ON (int) ;
 int snd_soundfont_remove_samples (int ) ;
 int snd_util_mem_avail (int ) ;

__attribute__((used)) static int
snd_emux_ioctl_seq_oss(struct snd_seq_oss_arg *arg, unsigned int cmd, unsigned long ioarg)
{
 struct snd_emux_port *p;
 struct snd_emux *emu;

 if (snd_BUG_ON(!arg))
  return -ENXIO;
 p = arg->private_data;
 if (snd_BUG_ON(!p))
  return -ENXIO;

 emu = p->emu;
 if (snd_BUG_ON(!emu))
  return -ENXIO;

 switch (cmd) {
 case 129:
  snd_soundfont_remove_samples(emu->sflist);
  return 0;

 case 128:
  if (emu->memhdr)
   return snd_util_mem_avail(emu->memhdr);
  return 0;
 }

 return 0;
}
