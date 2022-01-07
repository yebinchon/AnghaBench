
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_oss_arg {struct snd_emux_port* private_data; } ;
struct snd_emux_port {int dummy; } ;


 int ENXIO ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_emux_reset_port (struct snd_emux_port*) ;

__attribute__((used)) static int
snd_emux_reset_seq_oss(struct snd_seq_oss_arg *arg)
{
 struct snd_emux_port *p;

 if (snd_BUG_ON(!arg))
  return -ENXIO;
 p = arg->private_data;
 if (snd_BUG_ON(!p))
  return -ENXIO;
 snd_emux_reset_port(p);
 return 0;
}
