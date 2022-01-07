
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct voice {int flags; int period_size; int vperiod; int sync_cso; int sync_buffer_size; int sync_period_size; scalar_t__ buffer_size; int substream; scalar_t__ sync_base; } ;


 scalar_t__ SIS_CAPTURE_DMA_FORMAT_CSO ;
 int VOICE_SSO_TIMING ;
 int VOICE_SYNC_TIMING ;
 scalar_t__ readw (scalar_t__) ;
 int sis_update_sso (struct voice*,int) ;
 int snd_pcm_period_elapsed (int ) ;

__attribute__((used)) static void sis_update_voice(struct voice *voice)
{
 if (voice->flags & VOICE_SSO_TIMING) {
  sis_update_sso(voice, voice->period_size);
 } else if (voice->flags & VOICE_SYNC_TIMING) {
  int sync;




  if (voice->vperiod > voice->period_size) {
   voice->vperiod -= voice->period_size;
   if (voice->vperiod < voice->period_size)
    sis_update_sso(voice, voice->vperiod);
   else
    sis_update_sso(voice, voice->period_size);
   return;
  }






  sync = voice->sync_cso;
  sync -= readw(voice->sync_base + SIS_CAPTURE_DMA_FORMAT_CSO);
  if (sync > (voice->sync_buffer_size / 2))
   sync -= voice->sync_buffer_size;






  if (sync > 0) {
   if (sync < 16)
    sync = 16;
   sis_update_sso(voice, sync);
   return;
  }
  if (sync > -9)
   voice->vperiod = voice->sync_period_size + 1;
  else
   voice->vperiod = voice->sync_period_size + sync + 10;

  if (voice->vperiod < voice->buffer_size) {
   sis_update_sso(voice, voice->vperiod);
   voice->vperiod = 0;
  } else
   sis_update_sso(voice, voice->period_size);

  sync = voice->sync_cso + voice->sync_period_size;
  if (sync >= voice->sync_buffer_size)
   sync -= voice->sync_buffer_size;
  voice->sync_cso = sync;
 }

 snd_pcm_period_elapsed(voice->substream);
}
