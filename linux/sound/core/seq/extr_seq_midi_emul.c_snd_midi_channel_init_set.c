
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_midi_channel {int dummy; } ;


 int GFP_KERNEL ;
 struct snd_midi_channel* kmalloc_array (int,int,int ) ;
 int snd_midi_channel_init (struct snd_midi_channel*,int) ;

__attribute__((used)) static struct snd_midi_channel *snd_midi_channel_init_set(int n)
{
 struct snd_midi_channel *chan;
 int i;

 chan = kmalloc_array(n, sizeof(struct snd_midi_channel), GFP_KERNEL);
 if (chan) {
  for (i = 0; i < n; i++)
   snd_midi_channel_init(chan+i, i);
 }

 return chan;
}
