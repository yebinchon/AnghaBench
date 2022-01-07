
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_dapm_path {TYPE_1__* source; TYPE_2__* sink; scalar_t__ is_supply; scalar_t__ weak; } ;
struct TYPE_4__ {scalar_t__* endpoints; } ;
struct TYPE_3__ {scalar_t__* endpoints; } ;


 size_t SND_SOC_DAPM_DIR_IN ;
 size_t SND_SOC_DAPM_DIR_OUT ;
 int dapm_widget_invalidate_input_paths (TYPE_2__*) ;
 int dapm_widget_invalidate_output_paths (TYPE_1__*) ;

__attribute__((used)) static void dapm_path_invalidate(struct snd_soc_dapm_path *p)
{




 if (p->weak || p->is_supply)
  return;







 if (p->source->endpoints[SND_SOC_DAPM_DIR_IN] != 0)
  dapm_widget_invalidate_input_paths(p->sink);
 if (p->sink->endpoints[SND_SOC_DAPM_DIR_OUT] != 0)
  dapm_widget_invalidate_output_paths(p->source);
}
