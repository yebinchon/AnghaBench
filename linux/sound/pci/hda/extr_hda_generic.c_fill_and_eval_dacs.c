
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int num_dacs; void** extra_out_nid; void** hp_out_nid; void** dac_nids; } ;
struct auto_pin_cfg {int line_outs; int hp_outs; int speaker_outs; scalar_t__ line_out_type; int * hp_pins; int * line_out_pins; int * speaker_pins; } ;
struct hda_gen_spec {int multi_ios; int ext_channel_count; int min_channel_count; void** speaker_paths; TYPE_2__ multiout; void** hp_paths; scalar_t__ indep_hp; TYPE_1__* multi_io; void** private_dac_nids; int no_multi_io; void** aamix_out_paths; void** out_paths; scalar_t__ mixer_nid; int extra_out_badness; int main_out_badness; void* digin_path; void** loopback_paths; void** input_paths; void** digout_paths; int paths; struct auto_pin_cfg autocfg; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef int hda_nid_t ;
struct TYPE_3__ {void* dac; } ;


 scalar_t__ AUTO_PIN_HP_OUT ;
 scalar_t__ AUTO_PIN_SPEAKER_OUT ;
 scalar_t__ BAD_MULTI_IO ;
 scalar_t__ BAD_NO_INDEP_HP ;
 void* check_aamix_out_path (struct hda_codec*,void*) ;
 int count_multiio_pins (struct hda_codec*,int ) ;
 int fill_multi_ios (struct hda_codec*,int ,int) ;
 int indep_hp_possible (struct hda_codec*) ;
 int map_singles (struct hda_codec*,int,int *,void**,void**) ;
 int memmove (void**,void**,int) ;
 int memset (void**,int ,int) ;
 int refill_shared_dacs (struct hda_codec*,int,void**,void**) ;
 int snd_array_free (int *) ;
 int try_assign_dacs (struct hda_codec*,int,int *,void**,void**,int ) ;

__attribute__((used)) static int fill_and_eval_dacs(struct hda_codec *codec,
         bool fill_hardwired,
         bool fill_mio_first)
{
 struct hda_gen_spec *spec = codec->spec;
 struct auto_pin_cfg *cfg = &spec->autocfg;
 int i, err, badness;


 spec->multiout.num_dacs = cfg->line_outs;
 spec->multiout.dac_nids = spec->private_dac_nids;
 memset(spec->private_dac_nids, 0, sizeof(spec->private_dac_nids));
 memset(spec->multiout.hp_out_nid, 0, sizeof(spec->multiout.hp_out_nid));
 memset(spec->multiout.extra_out_nid, 0, sizeof(spec->multiout.extra_out_nid));
 spec->multi_ios = 0;
 snd_array_free(&spec->paths);


 memset(spec->out_paths, 0, sizeof(spec->out_paths));
 memset(spec->hp_paths, 0, sizeof(spec->hp_paths));
 memset(spec->speaker_paths, 0, sizeof(spec->speaker_paths));
 memset(spec->aamix_out_paths, 0, sizeof(spec->aamix_out_paths));
 memset(spec->digout_paths, 0, sizeof(spec->digout_paths));
 memset(spec->input_paths, 0, sizeof(spec->input_paths));
 memset(spec->loopback_paths, 0, sizeof(spec->loopback_paths));
 memset(&spec->digin_path, 0, sizeof(spec->digin_path));

 badness = 0;


 if (fill_hardwired) {
  bool mapped;
  do {
   mapped = map_singles(codec, cfg->line_outs,
          cfg->line_out_pins,
          spec->private_dac_nids,
          spec->out_paths);
   mapped |= map_singles(codec, cfg->hp_outs,
           cfg->hp_pins,
           spec->multiout.hp_out_nid,
           spec->hp_paths);
   mapped |= map_singles(codec, cfg->speaker_outs,
           cfg->speaker_pins,
           spec->multiout.extra_out_nid,
           spec->speaker_paths);
   if (!spec->no_multi_io &&
       fill_mio_first && cfg->line_outs == 1 &&
       cfg->line_out_type != AUTO_PIN_SPEAKER_OUT) {
    err = fill_multi_ios(codec, cfg->line_out_pins[0], 1);
    if (!err)
     mapped = 1;
   }
  } while (mapped);
 }

 badness += try_assign_dacs(codec, cfg->line_outs, cfg->line_out_pins,
       spec->private_dac_nids, spec->out_paths,
       spec->main_out_badness);

 if (!spec->no_multi_io && fill_mio_first &&
     cfg->line_outs == 1 && cfg->line_out_type != AUTO_PIN_SPEAKER_OUT) {

  err = fill_multi_ios(codec, cfg->line_out_pins[0], 0);
  if (err < 0)
   return err;

 }

 if (cfg->line_out_type != AUTO_PIN_HP_OUT) {
  err = try_assign_dacs(codec, cfg->hp_outs, cfg->hp_pins,
          spec->multiout.hp_out_nid,
          spec->hp_paths,
          spec->extra_out_badness);
  if (err < 0)
   return err;
  badness += err;
 }
 if (cfg->line_out_type != AUTO_PIN_SPEAKER_OUT) {
  err = try_assign_dacs(codec, cfg->speaker_outs,
          cfg->speaker_pins,
          spec->multiout.extra_out_nid,
          spec->speaker_paths,
          spec->extra_out_badness);
  if (err < 0)
   return err;
  badness += err;
 }
 if (!spec->no_multi_io &&
     cfg->line_outs == 1 && cfg->line_out_type != AUTO_PIN_SPEAKER_OUT) {
  err = fill_multi_ios(codec, cfg->line_out_pins[0], 0);
  if (err < 0)
   return err;
  badness += err;
 }

 if (spec->mixer_nid) {
  spec->aamix_out_paths[0] =
   check_aamix_out_path(codec, spec->out_paths[0]);
  if (cfg->line_out_type != AUTO_PIN_HP_OUT)
   spec->aamix_out_paths[1] =
    check_aamix_out_path(codec, spec->hp_paths[0]);
  if (cfg->line_out_type != AUTO_PIN_SPEAKER_OUT)
   spec->aamix_out_paths[2] =
    check_aamix_out_path(codec, spec->speaker_paths[0]);
 }

 if (!spec->no_multi_io &&
     cfg->hp_outs && cfg->line_out_type == AUTO_PIN_SPEAKER_OUT)
  if (count_multiio_pins(codec, cfg->hp_pins[0]) >= 2)
   spec->multi_ios = 1;


 spec->multiout.num_dacs = 0;
 for (i = 0; i < cfg->line_outs; i++) {
  if (spec->private_dac_nids[i])
   spec->multiout.num_dacs++;
  else {
   memmove(spec->private_dac_nids + i,
    spec->private_dac_nids + i + 1,
    sizeof(hda_nid_t) * (cfg->line_outs - i - 1));
   spec->private_dac_nids[cfg->line_outs - 1] = 0;
  }
 }

 spec->ext_channel_count = spec->min_channel_count =
  spec->multiout.num_dacs * 2;

 if (spec->multi_ios == 2) {
  for (i = 0; i < 2; i++)
   spec->private_dac_nids[spec->multiout.num_dacs++] =
    spec->multi_io[i].dac;
 } else if (spec->multi_ios) {
  spec->multi_ios = 0;
  badness += BAD_MULTI_IO;
 }

 if (spec->indep_hp && !indep_hp_possible(codec))
  badness += BAD_NO_INDEP_HP;


 if (cfg->line_out_type != AUTO_PIN_HP_OUT)
  refill_shared_dacs(codec, cfg->hp_outs,
       spec->multiout.hp_out_nid,
       spec->hp_paths);
 if (cfg->line_out_type != AUTO_PIN_SPEAKER_OUT)
  refill_shared_dacs(codec, cfg->speaker_outs,
       spec->multiout.extra_out_nid,
       spec->speaker_paths);

 return badness;
}
