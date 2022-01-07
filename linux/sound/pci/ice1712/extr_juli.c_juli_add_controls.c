
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {TYPE_2__* pcm; int card; struct juli_spec* spec; } ;
struct juli_spec {int ak4114; } ;
struct TYPE_4__ {TYPE_1__* streams; } ;
struct TYPE_3__ {int substream; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int ENOMEM ;
 size_t SNDRV_PCM_STREAM_CAPTURE ;
 int add_slaves (int ,struct snd_kcontrol*,int ) ;
 int juli_master_db_scale ;
 int * juli_mute_controls ;
 int slave_vols ;
 int snd_ak4114_build (int ,int *,int ) ;
 int snd_ctl_add (int ,struct snd_kcontrol*) ;
 struct snd_kcontrol* snd_ctl_make_virtual_master (char*,int ) ;
 struct snd_kcontrol* snd_ctl_new1 (int *,struct snd_ice1712*) ;
 int snd_ice1712_akm4xxx_build_controls (struct snd_ice1712*) ;

__attribute__((used)) static int juli_add_controls(struct snd_ice1712 *ice)
{
 struct juli_spec *spec = ice->spec;
 int err;
 unsigned int i;
 struct snd_kcontrol *vmaster;

 err = snd_ice1712_akm4xxx_build_controls(ice);
 if (err < 0)
  return err;

 for (i = 0; i < ARRAY_SIZE(juli_mute_controls); i++) {
  err = snd_ctl_add(ice->card,
    snd_ctl_new1(&juli_mute_controls[i], ice));
  if (err < 0)
   return err;
 }

 vmaster = snd_ctl_make_virtual_master("Master Playback Volume",
           juli_master_db_scale);
 if (!vmaster)
  return -ENOMEM;
 add_slaves(ice->card, vmaster, slave_vols);
 err = snd_ctl_add(ice->card, vmaster);
 if (err < 0)
  return err;


 return snd_ak4114_build(spec->ak4114, ((void*)0),
   ice->pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream);
}
