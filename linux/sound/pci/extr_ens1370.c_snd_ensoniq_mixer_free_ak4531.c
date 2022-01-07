
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_ak4531 {struct ensoniq* private_data; } ;
struct TYPE_3__ {int * ak4531; } ;
struct TYPE_4__ {TYPE_1__ es1370; } ;
struct ensoniq {TYPE_2__ u; } ;



__attribute__((used)) static void snd_ensoniq_mixer_free_ak4531(struct snd_ak4531 *ak4531)
{
 struct ensoniq *ensoniq = ak4531->private_data;
 ensoniq->u.es1370.ak4531 = ((void*)0);
}
