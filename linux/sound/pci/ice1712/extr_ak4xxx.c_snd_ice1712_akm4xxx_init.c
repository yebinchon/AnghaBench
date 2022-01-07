
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ice1712 {int card; } ;
struct TYPE_2__ {int * write; int * unlock; int * lock; } ;
struct snd_akm4xxx {unsigned long* private_value; TYPE_1__ ops; struct snd_ice1712** private_data; int card; } ;
struct snd_ak4xxx_private {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct snd_ak4xxx_private* kmalloc (int,int ) ;
 int snd_akm4xxx_init (struct snd_akm4xxx*) ;
 int * snd_ice1712_akm4xxx_lock ;
 int * snd_ice1712_akm4xxx_unlock ;
 int * snd_ice1712_akm4xxx_write ;

int snd_ice1712_akm4xxx_init(struct snd_akm4xxx *ak, const struct snd_akm4xxx *temp,
        const struct snd_ak4xxx_private *_priv, struct snd_ice1712 *ice)
{
 struct snd_ak4xxx_private *priv;

 if (_priv != ((void*)0)) {
  priv = kmalloc(sizeof(*priv), GFP_KERNEL);
  if (priv == ((void*)0))
   return -ENOMEM;
  *priv = *_priv;
 } else {
  priv = ((void*)0);
 }
 *ak = *temp;
 ak->card = ice->card;
        ak->private_value[0] = (unsigned long)priv;
 ak->private_data[0] = ice;
 if (ak->ops.lock == ((void*)0))
  ak->ops.lock = snd_ice1712_akm4xxx_lock;
 if (ak->ops.unlock == ((void*)0))
  ak->ops.unlock = snd_ice1712_akm4xxx_unlock;
 if (ak->ops.write == ((void*)0))
  ak->ops.write = snd_ice1712_akm4xxx_write;
 snd_akm4xxx_init(ak);
 return 0;
}
