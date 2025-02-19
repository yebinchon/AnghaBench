
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai_link_component {char* dai_name; char* name; } ;
struct snd_soc_dai_link {char* name; int id; int num_codecs; int nonatomic; int dpcm_playback; int dpcm_capture; int no_pcm; int num_cpus; int ignore_pmdown_time; int ignore_suspend; struct snd_soc_dai_link_component* cpus; int init; void* num_platforms; void* platforms; struct snd_soc_dai_link_component* codecs; int * ops; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int num_links; } ;


 void* ARRAY_SIZE (void*) ;
 int GFP_KERNEL ;
 int SOF_SPEAKER_AMP_PRESENT ;
 void* devm_kasprintf (struct device*,int ,char*,int) ;
 void* devm_kzalloc (struct device*,int,int ) ;
 void* dmic_component ;
 int dmic_init ;
 scalar_t__ is_legacy_cpu ;
 void* max98357a_component ;
 void* platform_component ;
 void* rt5682_component ;
 TYPE_1__ sof_audio_card_rt5682 ;
 int sof_hdmi_init ;
 int sof_rt5682_codec_init ;
 int sof_rt5682_ops ;
 int sof_rt5682_quirk ;
 int speaker_codec_init ;

__attribute__((used)) static struct snd_soc_dai_link *sof_card_dai_links_create(struct device *dev,
         int ssp_codec,
         int ssp_amp,
         int dmic_be_num,
         int hdmi_num)
{
 struct snd_soc_dai_link_component *idisp_components;
 struct snd_soc_dai_link_component *cpus;
 struct snd_soc_dai_link *links;
 int i, id = 0;

 links = devm_kzalloc(dev, sizeof(struct snd_soc_dai_link) *
        sof_audio_card_rt5682.num_links, GFP_KERNEL);
 cpus = devm_kzalloc(dev, sizeof(struct snd_soc_dai_link_component) *
        sof_audio_card_rt5682.num_links, GFP_KERNEL);
 if (!links || !cpus)
  goto devm_err;


 links[id].name = devm_kasprintf(dev, GFP_KERNEL,
     "SSP%d-Codec", ssp_codec);
 if (!links[id].name)
  goto devm_err;

 links[id].id = id;
 links[id].codecs = rt5682_component;
 links[id].num_codecs = ARRAY_SIZE(rt5682_component);
 links[id].platforms = platform_component;
 links[id].num_platforms = ARRAY_SIZE(platform_component);
 links[id].init = sof_rt5682_codec_init;
 links[id].ops = &sof_rt5682_ops;
 links[id].nonatomic = 1;
 links[id].dpcm_playback = 1;
 links[id].dpcm_capture = 1;
 links[id].no_pcm = 1;
 links[id].cpus = &cpus[id];
 links[id].num_cpus = 1;
 if (is_legacy_cpu) {
  links[id].cpus->dai_name = devm_kasprintf(dev, GFP_KERNEL,
         "ssp%d-port",
         ssp_codec);
  if (!links[id].cpus->dai_name)
   goto devm_err;
 } else {
  links[id].ignore_pmdown_time = 1;
  links[id].cpus->dai_name = devm_kasprintf(dev, GFP_KERNEL,
         "SSP%d Pin",
         ssp_codec);
  if (!links[id].cpus->dai_name)
   goto devm_err;
 }
 id++;


 if (dmic_be_num > 0) {

  links[id].name = "dmic01";
  links[id].cpus = &cpus[id];
  links[id].cpus->dai_name = "DMIC01 Pin";
  links[id].init = dmic_init;
  if (dmic_be_num > 1) {

   links[id + 1].name = "dmic16k";
   links[id + 1].cpus = &cpus[id + 1];
   links[id + 1].cpus->dai_name = "DMIC16k Pin";
   dmic_be_num = 2;
  }
 }

 for (i = 0; i < dmic_be_num; i++) {
  links[id].id = id;
  links[id].num_cpus = 1;
  links[id].codecs = dmic_component;
  links[id].num_codecs = ARRAY_SIZE(dmic_component);
  links[id].platforms = platform_component;
  links[id].num_platforms = ARRAY_SIZE(platform_component);
  links[id].ignore_suspend = 1;
  links[id].dpcm_capture = 1;
  links[id].no_pcm = 1;
  id++;
 }


 if (hdmi_num > 0) {
  idisp_components = devm_kzalloc(dev,
       sizeof(struct snd_soc_dai_link_component) *
       hdmi_num, GFP_KERNEL);
  if (!idisp_components)
   goto devm_err;
 }
 for (i = 1; i <= hdmi_num; i++) {
  links[id].name = devm_kasprintf(dev, GFP_KERNEL,
      "iDisp%d", i);
  if (!links[id].name)
   goto devm_err;

  links[id].id = id;
  links[id].cpus = &cpus[id];
  links[id].num_cpus = 1;
  links[id].cpus->dai_name = devm_kasprintf(dev, GFP_KERNEL,
         "iDisp%d Pin", i);
  if (!links[id].cpus->dai_name)
   goto devm_err;

  idisp_components[i - 1].name = "ehdaudio0D2";
  idisp_components[i - 1].dai_name = devm_kasprintf(dev,
          GFP_KERNEL,
          "intel-hdmi-hifi%d",
          i);
  if (!idisp_components[i - 1].dai_name)
   goto devm_err;

  links[id].codecs = &idisp_components[i - 1];
  links[id].num_codecs = 1;
  links[id].platforms = platform_component;
  links[id].num_platforms = ARRAY_SIZE(platform_component);
  links[id].init = sof_hdmi_init;
  links[id].dpcm_playback = 1;
  links[id].no_pcm = 1;
  id++;
 }


 if (sof_rt5682_quirk & SOF_SPEAKER_AMP_PRESENT) {
  links[id].name = devm_kasprintf(dev, GFP_KERNEL,
      "SSP%d-Codec", ssp_amp);
  if (!links[id].name)
   goto devm_err;

  links[id].id = id;
  links[id].codecs = max98357a_component;
  links[id].num_codecs = ARRAY_SIZE(max98357a_component);
  links[id].platforms = platform_component;
  links[id].num_platforms = ARRAY_SIZE(platform_component);
  links[id].init = speaker_codec_init,
  links[id].nonatomic = 1;
  links[id].dpcm_playback = 1;
  links[id].no_pcm = 1;
  links[id].cpus = &cpus[id];
  links[id].num_cpus = 1;
  if (is_legacy_cpu) {
   links[id].cpus->dai_name = devm_kasprintf(dev, GFP_KERNEL,
          "ssp%d-port",
          ssp_amp);
   if (!links[id].cpus->dai_name)
    goto devm_err;

  } else {
   links[id].cpus->dai_name = devm_kasprintf(dev, GFP_KERNEL,
          "SSP%d Pin",
          ssp_amp);
   if (!links[id].cpus->dai_name)
    goto devm_err;
  }
 }

 return links;
devm_err:
 return ((void*)0);
}
