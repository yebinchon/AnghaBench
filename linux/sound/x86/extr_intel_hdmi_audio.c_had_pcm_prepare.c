
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int periods; int rate; int channels; int period_size; } ;
struct snd_intelhad {int link_rate; scalar_t__ dp_output; int dev; int tmds_clock_speed; } ;


 int AUD_BUF_CH_SWAP ;
 int SWAP_LFE_CENTER ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*,int) ;
 scalar_t__ frames_to_bytes (struct snd_pcm_runtime*,int ) ;
 int had_do_reset (struct snd_intelhad*) ;
 int had_init_audio_ctrl (struct snd_pcm_substream*,struct snd_intelhad*) ;
 int had_init_ringbuf (struct snd_pcm_substream*,struct snd_intelhad*) ;
 int had_prog_cts (int,int ,int ,int ,struct snd_intelhad*) ;
 int had_prog_dip (struct snd_pcm_substream*,struct snd_intelhad*) ;
 int had_prog_n (int,int *,struct snd_intelhad*) ;
 int had_write_register (struct snd_intelhad*,int ,int ) ;
 scalar_t__ snd_pcm_lib_buffer_bytes (struct snd_pcm_substream*) ;
 struct snd_intelhad* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int had_pcm_prepare(struct snd_pcm_substream *substream)
{
 int retval;
 u32 disp_samp_freq, n_param;
 u32 link_rate = 0;
 struct snd_intelhad *intelhaddata;
 struct snd_pcm_runtime *runtime;

 intelhaddata = snd_pcm_substream_chip(substream);
 runtime = substream->runtime;

 dev_dbg(intelhaddata->dev, "period_size=%d\n",
  (int)frames_to_bytes(runtime, runtime->period_size));
 dev_dbg(intelhaddata->dev, "periods=%d\n", runtime->periods);
 dev_dbg(intelhaddata->dev, "buffer_size=%d\n",
  (int)snd_pcm_lib_buffer_bytes(substream));
 dev_dbg(intelhaddata->dev, "rate=%d\n", runtime->rate);
 dev_dbg(intelhaddata->dev, "channels=%d\n", runtime->channels);

 had_do_reset(intelhaddata);


 disp_samp_freq = intelhaddata->tmds_clock_speed;

 retval = had_prog_n(substream->runtime->rate, &n_param, intelhaddata);
 if (retval) {
  dev_err(intelhaddata->dev,
   "programming N value failed %#x\n", retval);
  goto prep_end;
 }

 if (intelhaddata->dp_output)
  link_rate = intelhaddata->link_rate;

 had_prog_cts(substream->runtime->rate, disp_samp_freq, link_rate,
       n_param, intelhaddata);

 had_prog_dip(substream, intelhaddata);

 retval = had_init_audio_ctrl(substream, intelhaddata);


 had_init_ringbuf(substream, intelhaddata);






 had_write_register(intelhaddata, AUD_BUF_CH_SWAP, SWAP_LFE_CENTER);

prep_end:
 return retval;
}
