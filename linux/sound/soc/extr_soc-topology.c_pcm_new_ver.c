
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_tplg {int dev; } ;
struct snd_soc_tplg_stream {int dummy; } ;
struct snd_soc_tplg_pcm_v4 {int * caps; int * stream; int num_streams; int compress; int capture; int playback; int dai_id; int pcm_id; int * dai_name; int * pcm_name; } ;
struct snd_soc_tplg_pcm {int * caps; int * stream; int num_streams; int compress; int capture; int playback; int dai_id; int pcm_id; int * dai_name; int * pcm_name; int size; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SNDRV_CTL_ELEM_ID_NAME_MAXLEN ;
 int cpu_to_le32 (int) ;
 int dev_err (int ,char*) ;
 int dev_warn (int ,char*) ;
 struct snd_soc_tplg_pcm* kzalloc (int,int ) ;
 int le32_to_cpu (int ) ;
 int memcpy (int *,int *,int) ;
 int stream_caps_new_ver (int *,int *) ;

__attribute__((used)) static int pcm_new_ver(struct soc_tplg *tplg,
         struct snd_soc_tplg_pcm *src,
         struct snd_soc_tplg_pcm **pcm)
{
 struct snd_soc_tplg_pcm *dest;
 struct snd_soc_tplg_pcm_v4 *src_v4;
 int i;

 *pcm = ((void*)0);

 if (le32_to_cpu(src->size) != sizeof(*src_v4)) {
  dev_err(tplg->dev, "ASoC: invalid PCM size\n");
  return -EINVAL;
 }

 dev_warn(tplg->dev, "ASoC: old version of PCM\n");
 src_v4 = (struct snd_soc_tplg_pcm_v4 *)src;
 dest = kzalloc(sizeof(*dest), GFP_KERNEL);
 if (!dest)
  return -ENOMEM;

 dest->size = cpu_to_le32(sizeof(*dest));
 memcpy(dest->pcm_name, src_v4->pcm_name, SNDRV_CTL_ELEM_ID_NAME_MAXLEN);
 memcpy(dest->dai_name, src_v4->dai_name, SNDRV_CTL_ELEM_ID_NAME_MAXLEN);
 dest->pcm_id = src_v4->pcm_id;
 dest->dai_id = src_v4->dai_id;
 dest->playback = src_v4->playback;
 dest->capture = src_v4->capture;
 dest->compress = src_v4->compress;
 dest->num_streams = src_v4->num_streams;
 for (i = 0; i < le32_to_cpu(dest->num_streams); i++)
  memcpy(&dest->stream[i], &src_v4->stream[i],
         sizeof(struct snd_soc_tplg_stream));

 for (i = 0; i < 2; i++)
  stream_caps_new_ver(&dest->caps[i], &src_v4->caps[i]);

 *pcm = dest;
 return 0;
}
