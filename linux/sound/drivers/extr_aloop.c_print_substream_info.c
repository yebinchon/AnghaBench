
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_buffer {int dummy; } ;
struct loopback_cable {int * streams; int pause; int running; int valid; } ;
struct loopback {struct loopback_cable*** cables; } ;


 int print_dpcm_info (struct snd_info_buffer*,int ,char*) ;
 int snd_iprintf (struct snd_info_buffer*,char*,...) ;

__attribute__((used)) static void print_substream_info(struct snd_info_buffer *buffer,
     struct loopback *loopback,
     int sub,
     int num)
{
 struct loopback_cable *cable = loopback->cables[sub][num];

 snd_iprintf(buffer, "Cable %i substream %i:\n", num, sub);
 if (cable == ((void*)0)) {
  snd_iprintf(buffer, "  inactive\n");
  return;
 }
 snd_iprintf(buffer, "  valid: %u\n", cable->valid);
 snd_iprintf(buffer, "  running: %u\n", cable->running);
 snd_iprintf(buffer, "  pause: %u\n", cable->pause);
 print_dpcm_info(buffer, cable->streams[0], "Playback");
 print_dpcm_info(buffer, cable->streams[1], "Capture");
}
