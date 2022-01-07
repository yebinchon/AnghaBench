
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nau8540 {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int CLK_ADC_MAX ;
 int EINVAL ;
 int dev_err (int ,char*) ;
 int osr_adc_sel ;

__attribute__((used)) static int nau8540_clock_check(struct nau8540 *nau8540, int rate, int osr)
{
 if (osr >= ARRAY_SIZE(osr_adc_sel))
  return -EINVAL;

 if (rate * osr > CLK_ADC_MAX) {
  dev_err(nau8540->dev, "exceed the maximum frequency of CLK_ADC\n");
  return -EINVAL;
 }

 return 0;
}
