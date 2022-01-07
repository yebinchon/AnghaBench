
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_ice1712 {TYPE_2__* pcm; int card; struct qtet_spec* spec; } ;
struct qtet_spec {int ak4113; } ;
struct TYPE_4__ {TYPE_1__* streams; } ;
struct TYPE_3__ {int substream; } ;


 int ARRAY_SIZE (int *) ;
 int ENOMEM ;
 size_t SNDRV_PCM_STREAM_CAPTURE ;
 int add_slaves (int ,struct snd_kcontrol*,int ) ;
 int * qtet_controls ;
 int qtet_master_db_scale ;
 int slave_vols ;
 int snd_ak4113_build (int ,int ) ;
 int snd_ctl_add (int ,struct snd_kcontrol*) ;
 struct snd_kcontrol* snd_ctl_make_virtual_master (char*,int ) ;
 struct snd_kcontrol* snd_ctl_new1 (int *,struct snd_ice1712*) ;
 int snd_ice1712_akm4xxx_build_controls (struct snd_ice1712*) ;

__attribute__((used)) static int qtet_add_controls(struct snd_ice1712 *ice)
{
 struct qtet_spec *spec = ice->spec;
 int err, i;
 struct snd_kcontrol *vmaster;
 err = snd_ice1712_akm4xxx_build_controls(ice);
 if (err < 0)
  return err;
 for (i = 0; i < ARRAY_SIZE(qtet_controls); i++) {
  err = snd_ctl_add(ice->card,
    snd_ctl_new1(&qtet_controls[i], ice));
  if (err < 0)
   return err;
 }


 vmaster = snd_ctl_make_virtual_master("Master Playback Volume",
   qtet_master_db_scale);
 if (!vmaster)
  return -ENOMEM;
 add_slaves(ice->card, vmaster, slave_vols);
 err = snd_ctl_add(ice->card, vmaster);
 if (err < 0)
  return err;

 return snd_ak4113_build(spec->ak4113,
   ice->pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream);
}
