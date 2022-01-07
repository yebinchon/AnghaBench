
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audio_port_data {scalar_t__ dsp_buf; } ;
struct audio_client {int lock; struct audio_port_data* port; } ;


 size_t SNDRV_PCM_STREAM_CAPTURE ;
 size_t SNDRV_PCM_STREAM_PLAYBACK ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void q6asm_reset_buf_state(struct audio_client *ac)
{
 struct audio_port_data *port = ((void*)0);
 unsigned long flags;

 spin_lock_irqsave(&ac->lock, flags);
 port = &ac->port[SNDRV_PCM_STREAM_PLAYBACK];
 port->dsp_buf = 0;
 port = &ac->port[SNDRV_PCM_STREAM_CAPTURE];
 port->dsp_buf = 0;
 spin_unlock_irqrestore(&ac->lock, flags);
}
