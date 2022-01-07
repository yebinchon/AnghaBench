
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfkill_gpio_data {char const* name; int rfkill_dev; int type; struct gpio_desc* shutdown_gpio; struct gpio_desc* reset_gpio; int clk; } ;
struct platform_device {int dev; } ;
struct gpio_desc {int dummy; } ;


 scalar_t__ ACPI_HANDLE (int *) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GPIOD_OUT_LOW ;
 scalar_t__ IS_ERR (struct gpio_desc*) ;
 int PTR_ERR (struct gpio_desc*) ;
 int dev_err (int *,char*) ;
 int dev_info (int *,char*,char const*) ;
 char const* dev_name (int *) ;
 int device_property_read_string (int *,char*,char const**) ;
 int devm_clk_get (int *,int *) ;
 struct gpio_desc* devm_gpiod_get_optional (int *,char*,int ) ;
 struct rfkill_gpio_data* devm_kzalloc (int *,int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct rfkill_gpio_data*) ;
 int rfkill_alloc (char const*,int *,int ,int *,struct rfkill_gpio_data*) ;
 int rfkill_destroy (int ) ;
 int rfkill_find_type (char const*) ;
 int rfkill_gpio_acpi_probe (int *,struct rfkill_gpio_data*) ;
 int rfkill_gpio_ops ;
 int rfkill_register (int ) ;

__attribute__((used)) static int rfkill_gpio_probe(struct platform_device *pdev)
{
 struct rfkill_gpio_data *rfkill;
 struct gpio_desc *gpio;
 const char *type_name;
 int ret;

 rfkill = devm_kzalloc(&pdev->dev, sizeof(*rfkill), GFP_KERNEL);
 if (!rfkill)
  return -ENOMEM;

 device_property_read_string(&pdev->dev, "name", &rfkill->name);
 device_property_read_string(&pdev->dev, "type", &type_name);

 if (!rfkill->name)
  rfkill->name = dev_name(&pdev->dev);

 rfkill->type = rfkill_find_type(type_name);

 if (ACPI_HANDLE(&pdev->dev)) {
  ret = rfkill_gpio_acpi_probe(&pdev->dev, rfkill);
  if (ret)
   return ret;
 }

 rfkill->clk = devm_clk_get(&pdev->dev, ((void*)0));

 gpio = devm_gpiod_get_optional(&pdev->dev, "reset", GPIOD_OUT_LOW);
 if (IS_ERR(gpio))
  return PTR_ERR(gpio);

 rfkill->reset_gpio = gpio;

 gpio = devm_gpiod_get_optional(&pdev->dev, "shutdown", GPIOD_OUT_LOW);
 if (IS_ERR(gpio))
  return PTR_ERR(gpio);

 rfkill->shutdown_gpio = gpio;


 if (!rfkill->reset_gpio && !rfkill->shutdown_gpio) {
  dev_err(&pdev->dev, "invalid platform data\n");
  return -EINVAL;
 }

 rfkill->rfkill_dev = rfkill_alloc(rfkill->name, &pdev->dev,
       rfkill->type, &rfkill_gpio_ops,
       rfkill);
 if (!rfkill->rfkill_dev)
  return -ENOMEM;

 ret = rfkill_register(rfkill->rfkill_dev);
 if (ret < 0)
  goto err_destroy;

 platform_set_drvdata(pdev, rfkill);

 dev_info(&pdev->dev, "%s device registered.\n", rfkill->name);

 return 0;

err_destroy:
 rfkill_destroy(rfkill->rfkill_dev);

 return ret;
}
