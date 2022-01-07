
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pci_quirk {void* value; } ;
struct hda_codec {int pcm_format_first; int no_sticky_stream; TYPE_1__* bus; int patch_ops; struct ca0132_spec* spec; } ;
struct ca0132_spec {int num_mixers; int use_alt_controls; int use_alt_functions; int use_pci_mmio; int autocfg; int unsol_hp_work; int base_exit_verbs; int base_init_verbs; void* quirk; int * mem_base; void** mixers; int dsp_state; struct hda_codec* codec; } ;
struct TYPE_2__ {int pci; } ;


 int DSP_DOWNLOAD_INIT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;

 void* QUIRK_NONE ;





 int ca0132_base_exit_verbs ;
 int ca0132_base_init_verbs ;
 int ca0132_config (struct hda_codec*) ;
 int ca0132_free (struct hda_codec*) ;
 int ca0132_init_chip (struct hda_codec*) ;
 void* ca0132_mixer ;
 int ca0132_patch_ops ;
 int ca0132_prepare_verbs (struct hda_codec*) ;
 int ca0132_quirk (struct ca0132_spec*) ;
 int ca0132_quirks ;
 int ca0132_unsol_hp_delayed ;
 int codec_dbg (struct hda_codec*,char*) ;
 int codec_warn (struct hda_codec*,char*) ;
 int dbpro_patch_ops ;
 void* desktop_mixer ;
 struct ca0132_spec* kzalloc (int,int ) ;
 int * pci_iomap (int ,int,int) ;
 void* r3di_mixer ;
 int sbz_detect_quirk (struct hda_codec*) ;
 int snd_hda_codec_set_name (struct hda_codec*,char*) ;
 int snd_hda_parse_pin_def_config (struct hda_codec*,int *,int *) ;
 struct snd_pci_quirk* snd_pci_quirk_lookup (int ,int ) ;

__attribute__((used)) static int patch_ca0132(struct hda_codec *codec)
{
 struct ca0132_spec *spec;
 int err;
 const struct snd_pci_quirk *quirk;

 codec_dbg(codec, "patch_ca0132\n");

 spec = kzalloc(sizeof(*spec), GFP_KERNEL);
 if (!spec)
  return -ENOMEM;
 codec->spec = spec;
 spec->codec = codec;


 quirk = snd_pci_quirk_lookup(codec->bus->pci, ca0132_quirks);
 if (quirk)
  spec->quirk = quirk->value;
 else
  spec->quirk = QUIRK_NONE;
 if (ca0132_quirk(spec) == 130)
  sbz_detect_quirk(codec);

 if (ca0132_quirk(spec) == 128)
  codec->patch_ops = dbpro_patch_ops;
 else
  codec->patch_ops = ca0132_patch_ops;

 codec->pcm_format_first = 1;
 codec->no_sticky_stream = 1;


 spec->dsp_state = DSP_DOWNLOAD_INIT;
 spec->num_mixers = 1;


 switch (ca0132_quirk(spec)) {
 case 130:
  spec->mixers[0] = desktop_mixer;
  snd_hda_codec_set_name(codec, "Sound Blaster Z");
  break;
 case 129:
  spec->mixers[0] = desktop_mixer;
  snd_hda_codec_set_name(codec, "Sound Blaster ZxR");
  break;
 case 128:
  break;
 case 132:
  spec->mixers[0] = desktop_mixer;
  snd_hda_codec_set_name(codec, "Recon3D");
  break;
 case 131:
  spec->mixers[0] = r3di_mixer;
  snd_hda_codec_set_name(codec, "Recon3Di");
  break;
 case 133:
  spec->mixers[0] = desktop_mixer;
  snd_hda_codec_set_name(codec, "Sound BlasterX AE-5");
  break;
 default:
  spec->mixers[0] = ca0132_mixer;
  break;
 }


 switch (ca0132_quirk(spec)) {
 case 130:
 case 132:
 case 133:
 case 129:
  spec->use_alt_controls = 1;
  spec->use_alt_functions = 1;
  spec->use_pci_mmio = 1;
  break;
 case 131:
  spec->use_alt_controls = 1;
  spec->use_alt_functions = 1;
  spec->use_pci_mmio = 0;
  break;
 default:
  spec->use_alt_controls = 0;
  spec->use_alt_functions = 0;
  spec->use_pci_mmio = 0;
  break;
 }
 spec->base_init_verbs = ca0132_base_init_verbs;
 spec->base_exit_verbs = ca0132_base_exit_verbs;

 INIT_DELAYED_WORK(&spec->unsol_hp_work, ca0132_unsol_hp_delayed);

 ca0132_init_chip(codec);

 ca0132_config(codec);

 err = ca0132_prepare_verbs(codec);
 if (err < 0)
  goto error;

 err = snd_hda_parse_pin_def_config(codec, &spec->autocfg, ((void*)0));
 if (err < 0)
  goto error;

 return 0;

 error:
 ca0132_free(codec);
 return err;
}
