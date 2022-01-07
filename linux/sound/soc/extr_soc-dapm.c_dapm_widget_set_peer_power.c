
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int power; } ;


 int dapm_mark_dirty (struct snd_soc_dapm_widget*,char*) ;

__attribute__((used)) static void dapm_widget_set_peer_power(struct snd_soc_dapm_widget *peer,
           bool power, bool connect)
{



 if (!connect)
  return;



 if (power != peer->power)
  dapm_mark_dirty(peer, "peer state change");
}
