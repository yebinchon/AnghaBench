
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_runtime {int dummy; } ;
typedef enum notify_type { ____Placeholder_notify_type } notify_type ;





 int EINVAL ;
 int ENODEV ;
 int PMAC_FTR_READ_GPIO ;
 int headphone_detect_gpio ;
 int headphone_detect_gpio_activestate ;
 int linein_detect_gpio ;
 int linein_detect_gpio_activestate ;
 int lineout_detect_gpio ;
 int lineout_detect_gpio_activestate ;
 int pmac_call_feature (int ,int *,int,int ) ;

__attribute__((used)) static int ftr_get_detect(struct gpio_runtime *rt,
     enum notify_type type)
{
 int gpio, ret, active;

 switch (type) {
 case 130:
  gpio = headphone_detect_gpio;
  active = headphone_detect_gpio_activestate;
  break;
 case 129:
  gpio = linein_detect_gpio;
  active = linein_detect_gpio_activestate;
  break;
 case 128:
  gpio = lineout_detect_gpio;
  active = lineout_detect_gpio_activestate;
  break;
 default:
  return -EINVAL;
 }

 if (gpio == -1)
  return -ENODEV;

 ret = pmac_call_feature(PMAC_FTR_READ_GPIO, ((void*)0), gpio, 0);
 if (ret < 0)
  return ret;
 return ((ret >> 1) & 1) == active;
}
