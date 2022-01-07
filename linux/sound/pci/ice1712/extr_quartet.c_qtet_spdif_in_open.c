
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {int rate_min; int rate_max; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;
struct snd_ice1712 {struct qtet_spec* spec; } ;
struct qtet_spec {int ak4113; } ;


 scalar_t__ EXT_SPDIF_TYPE ;
 scalar_t__ qtet_get_spdif_master_type (struct snd_ice1712*) ;
 int snd_ak4113_external_rate (int ) ;

__attribute__((used)) static void qtet_spdif_in_open(struct snd_ice1712 *ice,
  struct snd_pcm_substream *substream)
{
 struct qtet_spec *spec = ice->spec;
 struct snd_pcm_runtime *runtime = substream->runtime;
 int rate;

 if (qtet_get_spdif_master_type(ice) != EXT_SPDIF_TYPE)

  return;

 rate = snd_ak4113_external_rate(spec->ak4113);
 if (rate >= runtime->hw.rate_min && rate <= runtime->hw.rate_max) {
  runtime->hw.rate_min = rate;
  runtime->hw.rate_max = rate;
 }
}
