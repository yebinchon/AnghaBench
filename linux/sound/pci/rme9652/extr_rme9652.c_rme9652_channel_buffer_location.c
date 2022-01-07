
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rme9652 {int* channel_map; char* capture_buffer; char* playback_buffer; } ;


 int RME9652_CHANNEL_BUFFER_BYTES ;
 int RME9652_NCHANNELS ;
 int SNDRV_PCM_STREAM_CAPTURE ;
 scalar_t__ snd_BUG_ON (int) ;

__attribute__((used)) static char *rme9652_channel_buffer_location(struct snd_rme9652 *rme9652,
          int stream,
          int channel)

{
 int mapped_channel;

 if (snd_BUG_ON(channel < 0 || channel >= RME9652_NCHANNELS))
  return ((void*)0);

 if ((mapped_channel = rme9652->channel_map[channel]) < 0) {
  return ((void*)0);
 }

 if (stream == SNDRV_PCM_STREAM_CAPTURE) {
  return rme9652->capture_buffer +
   (mapped_channel * RME9652_CHANNEL_BUFFER_BYTES);
 } else {
  return rme9652->playback_buffer +
   (mapped_channel * RME9652_CHANNEL_BUFFER_BYTES);
 }
}
