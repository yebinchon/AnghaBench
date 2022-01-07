
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_seq_oss_arg {struct snd_emux_port* private_data; } ;
struct TYPE_2__ {int port; int client; } ;
struct snd_emux_port {TYPE_1__ chset; struct snd_emux* emu; } ;
struct snd_emux {int sflist; } ;


 int ENXIO ;
 int SF_CLIENT_NO (int ) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_emux_dec_count (struct snd_emux*) ;
 int snd_emux_sounds_off_all (struct snd_emux_port*) ;
 int snd_seq_event_port_detach (int ,int ) ;
 int snd_soundfont_close_check (int ,int ) ;

__attribute__((used)) static int
snd_emux_close_seq_oss(struct snd_seq_oss_arg *arg)
{
 struct snd_emux *emu;
 struct snd_emux_port *p;

 if (snd_BUG_ON(!arg))
  return -ENXIO;
 p = arg->private_data;
 if (snd_BUG_ON(!p))
  return -ENXIO;

 emu = p->emu;
 if (snd_BUG_ON(!emu))
  return -ENXIO;

 snd_emux_sounds_off_all(p);
 snd_soundfont_close_check(emu->sflist, SF_CLIENT_NO(p->chset.port));
 snd_seq_event_port_detach(p->chset.client, p->chset.port);
 snd_emux_dec_count(emu);

 return 0;
}
