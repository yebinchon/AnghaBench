
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct azx {unsigned char capture_index_offset; unsigned char capture_streams; } ;


 int SNDRV_PCM_STREAM_CAPTURE ;
 int SNDRV_PCM_STREAM_PLAYBACK ;

__attribute__((used)) static int stream_direction(struct azx *chip, unsigned char index)
{
 if (index >= chip->capture_index_offset &&
     index < chip->capture_index_offset + chip->capture_streams)
  return SNDRV_PCM_STREAM_CAPTURE;
 return SNDRV_PCM_STREAM_PLAYBACK;
}
