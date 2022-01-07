
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emux {int ops; } ;


 int emu10k1_ops ;

void
snd_emu10k1_ops_setup(struct snd_emux *emux)
{
 emux->ops = emu10k1_ops;
}
