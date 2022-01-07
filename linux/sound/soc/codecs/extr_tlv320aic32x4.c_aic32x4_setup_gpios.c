
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct aic32x4_priv {TYPE_1__* setup; } ;
struct TYPE_2__ {scalar_t__* gpio_func; } ;


 int AIC32X4_DINCTL ;
 int AIC32X4_DOUTCTL ;
 int AIC32X4_GPIOCTL ;
 scalar_t__ AIC32X4_MFPX_DEFAULT_VALUE ;
 int AIC32X4_MISOCTL ;
 int AIC32X4_SCLKCTL ;
 int ARRAY_SIZE (int ) ;
 int aic32x4_mfp1 ;
 int aic32x4_mfp2 ;
 int aic32x4_mfp3 ;
 int aic32x4_mfp4 ;
 int aic32x4_mfp5 ;
 int snd_soc_add_component_controls (struct snd_soc_component*,int ,int ) ;
 struct aic32x4_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,scalar_t__) ;

__attribute__((used)) static void aic32x4_setup_gpios(struct snd_soc_component *component)
{
 struct aic32x4_priv *aic32x4 = snd_soc_component_get_drvdata(component);



 if (aic32x4->setup->gpio_func[0] != AIC32X4_MFPX_DEFAULT_VALUE) {
  snd_soc_component_write(component, AIC32X4_DINCTL,
     aic32x4->setup->gpio_func[0]);
  snd_soc_add_component_controls(component, aic32x4_mfp1,
   ARRAY_SIZE(aic32x4_mfp1));
 }


 if (aic32x4->setup->gpio_func[1] != AIC32X4_MFPX_DEFAULT_VALUE) {
  snd_soc_component_write(component, AIC32X4_DOUTCTL,
     aic32x4->setup->gpio_func[1]);
  snd_soc_add_component_controls(component, aic32x4_mfp2,
   ARRAY_SIZE(aic32x4_mfp2));
 }


 if (aic32x4->setup->gpio_func[2] != AIC32X4_MFPX_DEFAULT_VALUE) {
  snd_soc_component_write(component, AIC32X4_SCLKCTL,
     aic32x4->setup->gpio_func[2]);
  snd_soc_add_component_controls(component, aic32x4_mfp3,
   ARRAY_SIZE(aic32x4_mfp3));
 }


 if (aic32x4->setup->gpio_func[3] != AIC32X4_MFPX_DEFAULT_VALUE) {
  snd_soc_component_write(component, AIC32X4_MISOCTL,
     aic32x4->setup->gpio_func[3]);
  snd_soc_add_component_controls(component, aic32x4_mfp4,
   ARRAY_SIZE(aic32x4_mfp4));
 }


 if (aic32x4->setup->gpio_func[4] != AIC32X4_MFPX_DEFAULT_VALUE) {
  snd_soc_component_write(component, AIC32X4_GPIOCTL,
     aic32x4->setup->gpio_func[4]);
  snd_soc_add_component_controls(component, aic32x4_mfp5,
   ARRAY_SIZE(aic32x4_mfp5));
 }
}
