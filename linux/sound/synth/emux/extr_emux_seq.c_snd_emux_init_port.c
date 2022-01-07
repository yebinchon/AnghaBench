
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emux_port {scalar_t__ volume_atten; int drum_flags; } ;


 int DEFAULT_DRUM_FLAGS ;
 int snd_emux_reset_port (struct snd_emux_port*) ;

__attribute__((used)) static void
snd_emux_init_port(struct snd_emux_port *p)
{
 p->drum_flags = DEFAULT_DRUM_FLAGS;
 p->volume_atten = 0;

 snd_emux_reset_port(p);
}
