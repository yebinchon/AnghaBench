
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * cleanup; int * prepare; int * close; int * open; } ;
struct hda_pcm_stream {TYPE_1__ ops; scalar_t__ nid; int maxbps; int formats; int rates; } ;
struct hda_codec {int dummy; } ;


 int EINVAL ;
 int * hda_pcm_default_cleanup ;
 void* hda_pcm_default_open_close ;
 int * hda_pcm_default_prepare ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_hda_query_supported_pcm (struct hda_codec*,scalar_t__,int *,int *,int *) ;

__attribute__((used)) static int set_pcm_default_values(struct hda_codec *codec,
      struct hda_pcm_stream *info)
{
 int err;


 if (info->nid && (!info->rates || !info->formats)) {
  err = snd_hda_query_supported_pcm(codec, info->nid,
    info->rates ? ((void*)0) : &info->rates,
    info->formats ? ((void*)0) : &info->formats,
    info->maxbps ? ((void*)0) : &info->maxbps);
  if (err < 0)
   return err;
 }
 if (info->ops.open == ((void*)0))
  info->ops.open = hda_pcm_default_open_close;
 if (info->ops.close == ((void*)0))
  info->ops.close = hda_pcm_default_open_close;
 if (info->ops.prepare == ((void*)0)) {
  if (snd_BUG_ON(!info->nid))
   return -EINVAL;
  info->ops.prepare = hda_pcm_default_prepare;
 }
 if (info->ops.cleanup == ((void*)0)) {
  if (snd_BUG_ON(!info->nid))
   return -EINVAL;
  info->ops.cleanup = hda_pcm_default_cleanup;
 }
 return 0;
}
