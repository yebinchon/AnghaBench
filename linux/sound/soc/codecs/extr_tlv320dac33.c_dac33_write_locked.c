
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlv320dac33_priv {int mutex; } ;
struct snd_soc_component {int dummy; } ;


 int dac33_write (struct snd_soc_component*,unsigned int,unsigned int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct tlv320dac33_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int dac33_write_locked(struct snd_soc_component *component, unsigned int reg,
         unsigned int value)
{
 struct tlv320dac33_priv *dac33 = snd_soc_component_get_drvdata(component);
 int ret;

 mutex_lock(&dac33->mutex);
 ret = dac33_write(component, reg, value);
 mutex_unlock(&dac33->mutex);

 return ret;
}
