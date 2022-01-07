
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_plugin_format {scalar_t__ format; int channels; void* rate; } ;
struct snd_pcm_plugin {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
typedef scalar_t__ snd_pcm_access_t ;


 int EINVAL ;
 scalar_t__ SNDRV_PCM_ACCESS_RW_INTERLEAVED ;
 scalar_t__ SNDRV_PCM_ACCESS_RW_NONINTERLEAVED ;
 scalar_t__ SNDRV_PCM_FORMAT_MU_LAW ;
 scalar_t__ SNDRV_PCM_FORMAT_S16 ;


 scalar_t__ params_access (struct snd_pcm_hw_params*) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 void* params_format (struct snd_pcm_hw_params*) ;
 void* params_rate (struct snd_pcm_hw_params*) ;
 int pdprintf (char*,int,...) ;
 int rate_match (void*,void*) ;
 int snd_BUG () ;
 scalar_t__ snd_pcm_format_linear (scalar_t__) ;
 int snd_pcm_plug_stream (struct snd_pcm_substream*) ;
 int snd_pcm_plugin_append (struct snd_pcm_plugin*) ;
 int snd_pcm_plugin_build_copy (struct snd_pcm_substream*,struct snd_pcm_plugin_format*,struct snd_pcm_plugin_format*,struct snd_pcm_plugin**) ;
 int snd_pcm_plugin_build_linear (struct snd_pcm_substream*,struct snd_pcm_plugin_format*,struct snd_pcm_plugin_format*,struct snd_pcm_plugin**) ;
 int snd_pcm_plugin_build_mulaw (struct snd_pcm_substream*,struct snd_pcm_plugin_format*,struct snd_pcm_plugin_format*,struct snd_pcm_plugin**) ;
 int snd_pcm_plugin_build_rate (struct snd_pcm_substream*,struct snd_pcm_plugin_format*,struct snd_pcm_plugin_format*,struct snd_pcm_plugin**) ;
 int snd_pcm_plugin_build_route (struct snd_pcm_substream*,struct snd_pcm_plugin_format*,struct snd_pcm_plugin_format*,struct snd_pcm_plugin**) ;
 int snd_pcm_plugin_free (struct snd_pcm_plugin*) ;

int snd_pcm_plug_format_plugins(struct snd_pcm_substream *plug,
    struct snd_pcm_hw_params *params,
    struct snd_pcm_hw_params *slave_params)
{
 struct snd_pcm_plugin_format tmpformat;
 struct snd_pcm_plugin_format dstformat;
 struct snd_pcm_plugin_format srcformat;
 snd_pcm_access_t src_access, dst_access;
 struct snd_pcm_plugin *plugin = ((void*)0);
 int err;
 int stream = snd_pcm_plug_stream(plug);
 int slave_interleaved = (params_channels(slave_params) == 1 ||
     params_access(slave_params) == SNDRV_PCM_ACCESS_RW_INTERLEAVED);

 switch (stream) {
 case 128:
  dstformat.format = params_format(slave_params);
  dstformat.rate = params_rate(slave_params);
  dstformat.channels = params_channels(slave_params);
  srcformat.format = params_format(params);
  srcformat.rate = params_rate(params);
  srcformat.channels = params_channels(params);
  src_access = SNDRV_PCM_ACCESS_RW_INTERLEAVED;
  dst_access = (slave_interleaved ? SNDRV_PCM_ACCESS_RW_INTERLEAVED :
        SNDRV_PCM_ACCESS_RW_NONINTERLEAVED);
  break;
 case 129:
  dstformat.format = params_format(params);
  dstformat.rate = params_rate(params);
  dstformat.channels = params_channels(params);
  srcformat.format = params_format(slave_params);
  srcformat.rate = params_rate(slave_params);
  srcformat.channels = params_channels(slave_params);
  src_access = (slave_interleaved ? SNDRV_PCM_ACCESS_RW_INTERLEAVED :
        SNDRV_PCM_ACCESS_RW_NONINTERLEAVED);
  dst_access = SNDRV_PCM_ACCESS_RW_INTERLEAVED;
  break;
 default:
  snd_BUG();
  return -EINVAL;
 }
 tmpformat = srcformat;

 pdprintf("srcformat: format=%i, rate=%i, channels=%i\n",
   srcformat.format,
   srcformat.rate,
   srcformat.channels);
 pdprintf("dstformat: format=%i, rate=%i, channels=%i\n",
   dstformat.format,
   dstformat.rate,
   dstformat.channels);


 if (! rate_match(srcformat.rate, dstformat.rate) &&
     ! snd_pcm_format_linear(srcformat.format)) {
  if (srcformat.format != SNDRV_PCM_FORMAT_MU_LAW)
   return -EINVAL;
  tmpformat.format = SNDRV_PCM_FORMAT_S16;
  err = snd_pcm_plugin_build_mulaw(plug,
       &srcformat, &tmpformat,
       &plugin);
  if (err < 0)
   return err;
  err = snd_pcm_plugin_append(plugin);
  if (err < 0) {
   snd_pcm_plugin_free(plugin);
   return err;
  }
  srcformat = tmpformat;
  src_access = dst_access;
 }


 if (srcformat.channels > dstformat.channels) {
  tmpformat.channels = dstformat.channels;
  err = snd_pcm_plugin_build_route(plug, &srcformat, &tmpformat, &plugin);
  pdprintf("channels reduction: src=%i, dst=%i returns %i\n", srcformat.channels, tmpformat.channels, err);
  if (err < 0)
   return err;
  err = snd_pcm_plugin_append(plugin);
  if (err < 0) {
   snd_pcm_plugin_free(plugin);
   return err;
  }
  srcformat = tmpformat;
  src_access = dst_access;
 }


 if (!rate_match(srcformat.rate, dstformat.rate)) {
  if (srcformat.format != SNDRV_PCM_FORMAT_S16) {

   tmpformat.format = SNDRV_PCM_FORMAT_S16;
   err = snd_pcm_plugin_build_linear(plug,
         &srcformat, &tmpformat,
         &plugin);
   if (err < 0)
    return err;
   err = snd_pcm_plugin_append(plugin);
   if (err < 0) {
    snd_pcm_plugin_free(plugin);
    return err;
   }
   srcformat = tmpformat;
   src_access = dst_access;
  }
  tmpformat.rate = dstformat.rate;
         err = snd_pcm_plugin_build_rate(plug,
             &srcformat, &tmpformat,
      &plugin);
  pdprintf("rate down resampling: src=%i, dst=%i returns %i\n", srcformat.rate, tmpformat.rate, err);
  if (err < 0)
   return err;
  err = snd_pcm_plugin_append(plugin);
  if (err < 0) {
   snd_pcm_plugin_free(plugin);
   return err;
  }
  srcformat = tmpformat;
  src_access = dst_access;
        }


 if (srcformat.format != dstformat.format) {
  tmpformat.format = dstformat.format;
  if (srcformat.format == SNDRV_PCM_FORMAT_MU_LAW ||
      tmpformat.format == SNDRV_PCM_FORMAT_MU_LAW) {
   err = snd_pcm_plugin_build_mulaw(plug,
        &srcformat, &tmpformat,
        &plugin);
  }
  else if (snd_pcm_format_linear(srcformat.format) &&
    snd_pcm_format_linear(tmpformat.format)) {
   err = snd_pcm_plugin_build_linear(plug,
         &srcformat, &tmpformat,
         &plugin);
  }
  else
   return -EINVAL;
  pdprintf("format change: src=%i, dst=%i returns %i\n", srcformat.format, tmpformat.format, err);
  if (err < 0)
   return err;
  err = snd_pcm_plugin_append(plugin);
  if (err < 0) {
   snd_pcm_plugin_free(plugin);
   return err;
  }
  srcformat = tmpformat;
  src_access = dst_access;
 }


 if (srcformat.channels < dstformat.channels) {
  tmpformat.channels = dstformat.channels;
  err = snd_pcm_plugin_build_route(plug, &srcformat, &tmpformat, &plugin);
  pdprintf("channels extension: src=%i, dst=%i returns %i\n", srcformat.channels, tmpformat.channels, err);
  if (err < 0)
   return err;
  err = snd_pcm_plugin_append(plugin);
  if (err < 0) {
   snd_pcm_plugin_free(plugin);
   return err;
  }
  srcformat = tmpformat;
  src_access = dst_access;
 }


 if (src_access != dst_access) {
  err = snd_pcm_plugin_build_copy(plug,
      &srcformat,
      &tmpformat,
      &plugin);
  pdprintf("interleave change (copy: returns %i)\n", err);
  if (err < 0)
   return err;
  err = snd_pcm_plugin_append(plugin);
  if (err < 0) {
   snd_pcm_plugin_free(plugin);
   return err;
  }
 }

 return 0;
}
