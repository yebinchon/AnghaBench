
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_midi_channel {int dummy; } ;
struct snd_emux_port {int dummy; } ;
struct nrpn_conv_table {int control; int (* convert ) (int) ;int effect; } ;


 int snd_emux_send_effect (struct snd_emux_port*,struct snd_midi_channel*,int ,int,int) ;
 int stub1 (int) ;

__attribute__((used)) static int send_converted_effect(const struct nrpn_conv_table *table,
     int num_tables,
     struct snd_emux_port *port,
     struct snd_midi_channel *chan,
     int type, int val, int mode)
{
 int i, cval;
 for (i = 0; i < num_tables; i++) {
  if (table[i].control == type) {
   cval = table[i].convert(val);
   snd_emux_send_effect(port, chan, table[i].effect,
          cval, mode);
   return 1;
  }
 }
 return 0;
}
