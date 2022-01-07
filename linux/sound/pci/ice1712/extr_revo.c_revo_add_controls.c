
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int subvendor; } ;
struct snd_ice1712 {TYPE_2__* pcm; struct revo51_spec* spec; TYPE_3__ eeprom; } ;
struct revo51_spec {int ak4114; int pt2258; } ;
struct TYPE_5__ {TYPE_1__* streams; } ;
struct TYPE_4__ {int substream; } ;


 size_t SNDRV_PCM_STREAM_CAPTURE ;



 int snd_ak4114_build (int ,int *,int ) ;
 int snd_ice1712_akm4xxx_build_controls (struct snd_ice1712*) ;
 int snd_pt2258_build_controls (int ) ;

__attribute__((used)) static int revo_add_controls(struct snd_ice1712 *ice)
{
 struct revo51_spec *spec = ice->spec;
 int err;

 switch (ice->eeprom.subvendor) {
 case 128:
  err = snd_ice1712_akm4xxx_build_controls(ice);
  if (err < 0)
   return err;
  break;
 case 129:
  err = snd_ice1712_akm4xxx_build_controls(ice);
  if (err < 0)
   return err;
  spec = ice->spec;
  err = snd_pt2258_build_controls(spec->pt2258);
  if (err < 0)
   return err;
  break;
 case 130:
  err = snd_ice1712_akm4xxx_build_controls(ice);
  if (err < 0)
   return err;

  err = snd_ak4114_build(spec->ak4114, ((void*)0),
     ice->pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream);
  if (err < 0)
   return err;
  break;
 }
 return 0;
}
