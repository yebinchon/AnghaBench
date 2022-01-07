
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_buffer {int dummy; } ;
struct lola {int dummy; } ;


 int LOLA_PAR_AUDIO_WIDGET_CAP ;
 int lola_read_param (struct lola*,int,int ,unsigned int*) ;
 int snd_iprintf (struct snd_info_buffer*,char*,int,unsigned int) ;

__attribute__((used)) static void print_mixer_widget(struct snd_info_buffer *buffer,
          struct lola *chip, int nid)
{
 unsigned int val;

 lola_read_param(chip, nid, LOLA_PAR_AUDIO_WIDGET_CAP, &val);
 snd_iprintf(buffer, "Node 0x%02x [Mixer] wcaps 0x%x\n", nid, val);
}
