
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {int codec; TYPE_3__* dma_adb; int * mixspdif; struct pcm_vol* pcm_vol; int * a3d; TYPE_1__* card; } ;
typedef TYPE_2__ vortex_t ;
typedef int u32 ;
struct pcm_vol {int dma; int* mixin; scalar_t__* vol; } ;
struct TYPE_18__ {int dma; int dir; int type; int nr_ch; int * resources; } ;
typedef TYPE_3__ stream_t ;
struct TYPE_16__ {int dev; } ;


 int AC97_SIGMATEL_DAC2INVERT ;
 int ADB_A3DIN (int) ;
 int ADB_DMA (int) ;
 int ADB_MIXOUT (int ) ;
 int ADB_SPDIFOUT (int) ;
 int ADB_SRCOUT (int) ;
 int EBUSY ;
 int EINVAL ;
 int MIX_CAPT (int) ;
 int MIX_DEFIGAIN ;
 int MIX_PLAYB (int) ;
 int MIX_SPDIF (int) ;
 int SNDRV_PCM_STREAM_PLAYBACK ;
 scalar_t__ VORTEX_IS_QUAD (TYPE_2__*) ;
 int VORTEX_PCM_A3D ;
 int VORTEX_PCM_ADB ;
 int VORTEX_PCM_SPDIF ;
 int VORTEX_RESOURCE_A3D ;
 int VORTEX_RESOURCE_DMA ;
 int VORTEX_RESOURCE_MIXIN ;
 int VORTEX_RESOURCE_MIXOUT ;
 int VORTEX_RESOURCE_SRC ;
 int dev_err (int ,char*) ;
 int memset (int *,int ,int) ;
 int snd_ac97_read (int ,int ) ;
 int snd_ac97_write_cache (int ,int ,int) ;
 int vortex_Vort3D_InitializeSource (int *,int,TYPE_2__*) ;
 int vortex_adb_checkinout (TYPE_2__*,int *,int,int ) ;
 int vortex_connection_adbdma_src (TYPE_2__*,int,int,int,int) ;
 int vortex_connection_mix_src (TYPE_2__*,int,int,int,int) ;
 int vortex_connection_mixin_mix (TYPE_2__*,int,int,int,int ) ;
 int vortex_connection_src_adbdma (TYPE_2__*,int,int,int,int) ;
 int vortex_connection_src_mixin (TYPE_2__*,int,int,int,int) ;
 int vortex_connection_src_src_adbdma (TYPE_2__*,int,int,int,int,int) ;
 int vortex_mix_setinputvolumebyte (TYPE_2__*,int,int,int ) ;
 int vortex_route (TYPE_2__*,int,int,int ,int ) ;

__attribute__((used)) static int
vortex_adb_allocroute(vortex_t *vortex, int dma, int nr_ch, int dir,
   int type, int subdev)
{
 stream_t *stream;
 int i, en;
 struct pcm_vol *p;

 if (dma >= 0) {
  en = 0;
  vortex_adb_checkinout(vortex,
          vortex->dma_adb[dma].resources, en,
          VORTEX_RESOURCE_DMA);
 } else {
  en = 1;
  if ((dma =
       vortex_adb_checkinout(vortex, ((void*)0), en,
        VORTEX_RESOURCE_DMA)) < 0)
   return -EBUSY;
 }

 stream = &vortex->dma_adb[dma];
 stream->dma = dma;
 stream->dir = dir;
 stream->type = type;


 if (dir == SNDRV_PCM_STREAM_PLAYBACK) {
  int src[4], mix[4], ch_top;

  int a3d = 0;


  if (stream->type != VORTEX_PCM_SPDIF) {
   for (i = 0; i < nr_ch; i++) {
    if ((src[i] = vortex_adb_checkinout(vortex,
          stream->resources, en,
          VORTEX_RESOURCE_SRC)) < 0) {
     memset(stream->resources, 0,
            sizeof(stream->resources));
     return -EBUSY;
    }
    if (stream->type != VORTEX_PCM_A3D) {
     if ((mix[i] = vortex_adb_checkinout(vortex,
           stream->resources,
           en,
           VORTEX_RESOURCE_MIXIN)) < 0) {
      memset(stream->resources,
             0,
             sizeof(stream->resources));
      return -EBUSY;
     }
    }
   }
  }

  if (stream->type == VORTEX_PCM_A3D) {
   if ((a3d =
        vortex_adb_checkinout(vortex,
         stream->resources, en,
         VORTEX_RESOURCE_A3D)) < 0) {
    memset(stream->resources, 0,
           sizeof(stream->resources));
    dev_err(vortex->card->dev,
     "out of A3D sources. Sorry\n");
    return -EBUSY;
   }

   vortex_Vort3D_InitializeSource(&vortex->a3d[a3d], en,
             vortex);
  }

  if ((stream->type == VORTEX_PCM_SPDIF) && (en)) {
   vortex_route(vortex, 0, 0x14,
         ADB_MIXOUT(vortex->mixspdif[0]),
         ADB_SPDIFOUT(0));
   vortex_route(vortex, 0, 0x14,
         ADB_MIXOUT(vortex->mixspdif[1]),
         ADB_SPDIFOUT(1));
  }


  for (i = 0; i < nr_ch; i++) {
   if (stream->type == VORTEX_PCM_ADB) {
    vortex_connection_adbdma_src(vortex, en,
            src[nr_ch - 1],
            dma,
            src[i]);
    vortex_connection_src_mixin(vortex, en,
           0x11, src[i],
           mix[i]);
    vortex_connection_mixin_mix(vortex, en,
           mix[i],
           MIX_PLAYB(i), 0);

    vortex_connection_mixin_mix(vortex, en,
           mix[i],
           MIX_SPDIF(i % 2), 0);
    vortex_mix_setinputvolumebyte(vortex,
             MIX_SPDIF(i % 2),
             mix[i],
             MIX_DEFIGAIN);

   }

   if (stream->type == VORTEX_PCM_A3D) {
    vortex_connection_adbdma_src(vortex, en,
            src[nr_ch - 1],
         dma,
            src[i]);
    vortex_route(vortex, en, 0x11, ADB_SRCOUT(src[i]), ADB_A3DIN(a3d));



   }
   if (stream->type == VORTEX_PCM_SPDIF)
    vortex_route(vortex, en, 0x14,
          ADB_DMA(stream->dma),
          ADB_SPDIFOUT(i));

  }
  if (stream->type != VORTEX_PCM_SPDIF && stream->type != VORTEX_PCM_A3D) {
   ch_top = (VORTEX_IS_QUAD(vortex) ? 4 : 2);
   for (i = nr_ch; i < ch_top; i++) {
    vortex_connection_mixin_mix(vortex, en,
           mix[i % nr_ch],
           MIX_PLAYB(i), 0);

    vortex_connection_mixin_mix(vortex, en,
           mix[i % nr_ch],
           MIX_SPDIF(i % 2),
        0);
    vortex_mix_setinputvolumebyte(vortex,
             MIX_SPDIF(i % 2),
             mix[i % nr_ch],
             MIX_DEFIGAIN);

   }
   if (stream->type == VORTEX_PCM_ADB && en) {
    p = &vortex->pcm_vol[subdev];
    p->dma = dma;
    for (i = 0; i < nr_ch; i++)
     p->mixin[i] = mix[i];
    for (i = 0; i < ch_top; i++)
     p->vol[i] = 0;
   }
  }

  else {
   if (nr_ch == 1 && stream->type == VORTEX_PCM_SPDIF)
    vortex_route(vortex, en, 0x14,
          ADB_DMA(stream->dma),
          ADB_SPDIFOUT(1));
  }

  if ((stream->type == VORTEX_PCM_SPDIF) && (!en)) {
   vortex_route(vortex, 1, 0x14,
         ADB_MIXOUT(vortex->mixspdif[0]),
         ADB_SPDIFOUT(0));
   vortex_route(vortex, 1, 0x14,
         ADB_MIXOUT(vortex->mixspdif[1]),
         ADB_SPDIFOUT(1));
  }


 } else {
  int src[2], mix[2];

  if (nr_ch < 1)
   return -EINVAL;


  for (i = 0; i < nr_ch; i++) {
   if ((mix[i] =
        vortex_adb_checkinout(vortex,
         stream->resources, en,
         VORTEX_RESOURCE_MIXOUT))
       < 0) {
    memset(stream->resources, 0,
           sizeof(stream->resources));
    return -EBUSY;
   }
   if ((src[i] =
        vortex_adb_checkinout(vortex,
         stream->resources, en,
         VORTEX_RESOURCE_SRC)) < 0) {
    memset(stream->resources, 0,
           sizeof(stream->resources));
    return -EBUSY;
   }
  }


  vortex_connection_mixin_mix(vortex, en, MIX_CAPT(0), mix[0], 0);
  vortex_connection_mix_src(vortex, en, 0x11, mix[0], src[0]);
  if (nr_ch == 1) {
   vortex_connection_mixin_mix(vortex, en,
          MIX_CAPT(1), mix[0], 0);
   vortex_connection_src_adbdma(vortex, en,
           src[0],
           src[0], dma);
  } else {
   vortex_connection_mixin_mix(vortex, en,
          MIX_CAPT(1), mix[1], 0);
   vortex_connection_mix_src(vortex, en, 0x11, mix[1],
        src[1]);
   vortex_connection_src_src_adbdma(vortex, en,
        src[1], src[0],
        src[1], dma);
  }
 }
 vortex->dma_adb[dma].nr_ch = nr_ch;
 return dma;
}
