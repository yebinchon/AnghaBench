
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int core; int nids; int mixers; scalar_t__ spdif_status_reset; int * slave_dig_outs; int * preset; int verbs; int spdif_out; int cvt_setups; int driver_pins; int * spec; int * proc_widget_hook; int patch_ops; int in_freeing; int jackpoll_work; scalar_t__ registered; } ;


 int cancel_delayed_work_sync (int *) ;
 int codec_release_pcms (struct hda_codec*) ;
 int hda_codec_dev (struct hda_codec*) ;
 int memset (int *,int ,int) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_get_noresume (int ) ;
 int remove_conn_list (struct hda_codec*) ;
 int snd_array_free (int *) ;
 int snd_hda_ctls_clear (struct hda_codec*) ;
 int snd_hda_detach_beep_device (struct hda_codec*) ;
 int snd_hda_jack_tbl_clear (struct hda_codec*) ;
 int snd_hdac_regmap_exit (int *) ;

void snd_hda_codec_cleanup_for_unbind(struct hda_codec *codec)
{
 if (codec->registered) {

  pm_runtime_get_noresume(hda_codec_dev(codec));
  pm_runtime_disable(hda_codec_dev(codec));
  codec->registered = 0;
 }

 cancel_delayed_work_sync(&codec->jackpoll_work);
 if (!codec->in_freeing)
  snd_hda_ctls_clear(codec);
 codec_release_pcms(codec);
 snd_hda_detach_beep_device(codec);
 memset(&codec->patch_ops, 0, sizeof(codec->patch_ops));
 snd_hda_jack_tbl_clear(codec);
 codec->proc_widget_hook = ((void*)0);
 codec->spec = ((void*)0);


 snd_array_free(&codec->driver_pins);
 snd_array_free(&codec->cvt_setups);
 snd_array_free(&codec->spdif_out);
 snd_array_free(&codec->verbs);
 codec->preset = ((void*)0);
 codec->slave_dig_outs = ((void*)0);
 codec->spdif_status_reset = 0;
 snd_array_free(&codec->mixers);
 snd_array_free(&codec->nids);
 remove_conn_list(codec);
 snd_hdac_regmap_exit(&codec->core);
}
