
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rme9652 {int playback_buffer; } ;


 int RME9652_DMA_AREA_BYTES ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static void rme9652_silence_playback(struct snd_rme9652 *rme9652)
{
 memset(rme9652->playback_buffer, 0, RME9652_DMA_AREA_BYTES);
}
