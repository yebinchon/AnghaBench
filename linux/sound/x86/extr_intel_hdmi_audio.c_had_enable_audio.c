
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int aud_en; } ;
struct TYPE_4__ {int regval; TYPE_1__ regx; } ;
struct snd_intelhad {TYPE_2__ aud_config; } ;


 int AUD_CONFIG ;
 int had_write_register (struct snd_intelhad*,int ,int ) ;

__attribute__((used)) static void had_enable_audio(struct snd_intelhad *intelhaddata,
        bool enable)
{

 intelhaddata->aud_config.regx.aud_en = enable;
 had_write_register(intelhaddata, AUD_CONFIG,
      intelhaddata->aud_config.regval);
}
