
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_rawmidi_file {struct snd_rawmidi* rmidi; } ;
struct snd_rawmidi {TYPE_1__* card; } ;
struct TYPE_2__ {int module; } ;


 int ENXIO ;
 int module_put (int ) ;
 int rawmidi_release_priv (struct snd_rawmidi_file*) ;
 scalar_t__ snd_BUG_ON (int) ;

int snd_rawmidi_kernel_release(struct snd_rawmidi_file *rfile)
{
 struct snd_rawmidi *rmidi;

 if (snd_BUG_ON(!rfile))
  return -ENXIO;

 rmidi = rfile->rmidi;
 rawmidi_release_priv(rfile);
 module_put(rmidi->card->module);
 return 0;
}
