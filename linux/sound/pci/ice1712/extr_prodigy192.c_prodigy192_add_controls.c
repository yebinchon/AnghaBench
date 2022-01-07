
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_ice1712 {TYPE_2__* pcm; int card; struct prodigy192_spec* spec; } ;
struct prodigy192_spec {scalar_t__ ak4114; } ;
struct TYPE_4__ {TYPE_1__* streams; } ;
struct TYPE_3__ {int substream; } ;


 unsigned int ARRAY_SIZE (int *) ;
 size_t SNDRV_PCM_STREAM_CAPTURE ;
 int * ak4114_controls ;
 int snd_ak4114_build (scalar_t__,int *,int ) ;
 int snd_ctl_add (int ,int ) ;
 int snd_ctl_new1 (int *,struct snd_ice1712*) ;
 int stac9460_proc_init (struct snd_ice1712*) ;
 int * stac_controls ;

__attribute__((used)) static int prodigy192_add_controls(struct snd_ice1712 *ice)
{
 struct prodigy192_spec *spec = ice->spec;
 unsigned int i;
 int err;

 for (i = 0; i < ARRAY_SIZE(stac_controls); i++) {
  err = snd_ctl_add(ice->card,
      snd_ctl_new1(&stac_controls[i], ice));
  if (err < 0)
   return err;
 }
 if (spec->ak4114) {

  for (i = 0; i < ARRAY_SIZE(ak4114_controls); i++) {
   err = snd_ctl_add(ice->card,
       snd_ctl_new1(&ak4114_controls[i],
             ice));
   if (err < 0)
    return err;
  }
  err = snd_ak4114_build(spec->ak4114,
    ((void*)0),
    ice->pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream);
  if (err < 0)
   return err;
 }
 stac9460_proc_init(ice);
 return 0;
}
