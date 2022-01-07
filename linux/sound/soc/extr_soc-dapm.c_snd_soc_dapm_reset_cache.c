
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * widget; } ;
struct TYPE_3__ {int * widget; } ;
struct snd_soc_dapm_context {TYPE_2__ path_source_cache; TYPE_1__ path_sink_cache; } ;



void snd_soc_dapm_reset_cache(struct snd_soc_dapm_context *dapm)
{
 dapm->path_sink_cache.widget = ((void*)0);
 dapm->path_source_cache.widget = ((void*)0);
}
