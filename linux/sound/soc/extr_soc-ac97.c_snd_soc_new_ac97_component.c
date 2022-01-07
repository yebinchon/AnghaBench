
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct snd_ac97 {int dev; } ;


 struct snd_ac97* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct snd_ac97*) ;
 int dev_err (int ,char*,int) ;
 int device_add (int *) ;
 int put_device (int *) ;
 int snd_ac97_reset (struct snd_ac97*,int,unsigned int,unsigned int) ;
 int snd_soc_ac97_init_gpio (struct snd_ac97*,struct snd_soc_component*) ;
 struct snd_ac97* snd_soc_alloc_ac97_component (struct snd_soc_component*) ;

struct snd_ac97 *snd_soc_new_ac97_component(struct snd_soc_component *component,
 unsigned int id, unsigned int id_mask)
{
 struct snd_ac97 *ac97;
 int ret;

 ac97 = snd_soc_alloc_ac97_component(component);
 if (IS_ERR(ac97))
  return ac97;

 if (id) {
  ret = snd_ac97_reset(ac97, 0, id, id_mask);
  if (ret < 0) {
   dev_err(component->dev, "Failed to reset AC97 device: %d\n",
    ret);
   goto err_put_device;
  }
 }

 ret = device_add(&ac97->dev);
 if (ret)
  goto err_put_device;

 ret = snd_soc_ac97_init_gpio(ac97, component);
 if (ret)
  goto err_put_device;

 return ac97;

err_put_device:
 put_device(&ac97->dev);
 return ERR_PTR(ret);
}
