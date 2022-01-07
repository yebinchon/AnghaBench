
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_substream* next; } ;
struct snd_pcm_chmap_elem {int dummy; } ;
struct snd_pcm {TYPE_1__* streams; int name; scalar_t__ info_flags; struct snd_ca0106* private_data; } ;
struct snd_ca0106 {struct snd_pcm** pcm; int pci; int card; } ;
struct TYPE_2__ {struct snd_pcm_substream* substream; } ;


 int SNDRV_DMA_TYPE_DEV ;
 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 struct snd_pcm_chmap_elem* clfe_map ;
 struct snd_pcm_chmap_elem* side_map ;
 int snd_ca0106_capture_0_ops ;
 int snd_ca0106_capture_1_ops ;
 int snd_ca0106_capture_2_ops ;
 int snd_ca0106_capture_3_ops ;
 int snd_ca0106_playback_center_lfe_ops ;
 int snd_ca0106_playback_front_ops ;
 int snd_ca0106_playback_rear_ops ;
 int snd_ca0106_playback_unknown_ops ;
 int snd_dma_pci_data (int ) ;
 int snd_pcm_add_chmap_ctls (struct snd_pcm*,size_t,struct snd_pcm_chmap_elem const*,int,int,int *) ;
 int snd_pcm_lib_preallocate_pages (struct snd_pcm_substream*,int ,int ,int,int) ;
 int snd_pcm_new (int ,char*,int,int,int,struct snd_pcm**) ;
 int snd_pcm_set_ops (struct snd_pcm*,size_t,int *) ;
 struct snd_pcm_chmap_elem* snd_pcm_std_chmaps ;
 int strcpy (int ,char*) ;
 struct snd_pcm_chmap_elem* surround_map ;

__attribute__((used)) static int snd_ca0106_pcm(struct snd_ca0106 *emu, int device)
{
 struct snd_pcm *pcm;
 struct snd_pcm_substream *substream;
 const struct snd_pcm_chmap_elem *map = ((void*)0);
 int err;

 err = snd_pcm_new(emu->card, "ca0106", device, 1, 1, &pcm);
 if (err < 0)
  return err;

 pcm->private_data = emu;

 switch (device) {
 case 0:
   snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_ca0106_playback_front_ops);
   snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_ca0106_capture_0_ops);
   map = snd_pcm_std_chmaps;
          break;
 case 1:
   snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_ca0106_playback_rear_ops);
   snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_ca0106_capture_1_ops);
   map = surround_map;
          break;
 case 2:
   snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_ca0106_playback_center_lfe_ops);
   snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_ca0106_capture_2_ops);
   map = clfe_map;
          break;
 case 3:
   snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_PLAYBACK, &snd_ca0106_playback_unknown_ops);
   snd_pcm_set_ops(pcm, SNDRV_PCM_STREAM_CAPTURE, &snd_ca0106_capture_3_ops);
   map = side_map;
          break;
        }

 pcm->info_flags = 0;
 strcpy(pcm->name, "CA0106");

 for(substream = pcm->streams[SNDRV_PCM_STREAM_PLAYBACK].substream;
     substream;
     substream = substream->next) {
  snd_pcm_lib_preallocate_pages(substream, SNDRV_DMA_TYPE_DEV,
           snd_dma_pci_data(emu->pci),
           64*1024, 64*1024);
 }

 for (substream = pcm->streams[SNDRV_PCM_STREAM_CAPTURE].substream;
       substream;
       substream = substream->next) {
  snd_pcm_lib_preallocate_pages(substream, SNDRV_DMA_TYPE_DEV,
           snd_dma_pci_data(emu->pci),
           64*1024, 64*1024);
 }

 err = snd_pcm_add_chmap_ctls(pcm, SNDRV_PCM_STREAM_PLAYBACK, map, 2,
         1 << 2, ((void*)0));
 if (err < 0)
  return err;

 emu->pcm[device] = pcm;

 return 0;
}
