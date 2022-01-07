
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ps3av_audio_mute (int) ;

__attribute__((used)) static int snd_ps3_mute(int mute_on)
{
 return ps3av_audio_mute(mute_on);
}
