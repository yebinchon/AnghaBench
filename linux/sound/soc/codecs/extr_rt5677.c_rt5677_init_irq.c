
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int jd1_gpio; int jd2_gpio; int jd3_gpio; } ;
struct rt5677_priv {int domain; int regmap; TYPE_1__ pdata; int irq_lock; } ;
struct TYPE_5__ {int of_node; } ;
struct i2c_client {TYPE_2__ dev; int irq; } ;


 int EINVAL ;
 int ENOMEM ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_RISING ;
 int RT5677_DIG_MISC ;
 int RT5677_GEN_CTRL1 ;
 unsigned int RT5677_GPIO1_PIN_IRQ ;
 unsigned int RT5677_GPIO1_PIN_MASK ;
 int RT5677_GPIO_CTRL1 ;
 unsigned int RT5677_IRQ_DEBOUNCE_SEL_MASK ;
 unsigned int RT5677_IRQ_DEBOUNCE_SEL_RC ;
 int RT5677_IRQ_NUM ;
 int RT5677_JD_CTRL1 ;
 unsigned int RT5677_SEL_GPIO_JD1_MASK ;
 unsigned int RT5677_SEL_GPIO_JD1_SFT ;
 unsigned int RT5677_SEL_GPIO_JD2_MASK ;
 unsigned int RT5677_SEL_GPIO_JD2_SFT ;
 unsigned int RT5677_SEL_GPIO_JD3_MASK ;
 unsigned int RT5677_SEL_GPIO_JD3_SFT ;
 int dev_err (TYPE_2__*,char*,...) ;
 int devm_request_threaded_irq (TYPE_2__*,int ,int *,int ,int,char*,struct rt5677_priv*) ;
 struct rt5677_priv* i2c_get_clientdata (struct i2c_client*) ;
 int irq_domain_add_linear (int ,int ,int *,struct rt5677_priv*) ;
 int mutex_init (int *) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 int rt5677_domain_ops ;
 int rt5677_irq ;

__attribute__((used)) static int rt5677_init_irq(struct i2c_client *i2c)
{
 int ret;
 struct rt5677_priv *rt5677 = i2c_get_clientdata(i2c);
 unsigned int jd_mask = 0, jd_val = 0;

 if (!rt5677->pdata.jd1_gpio &&
  !rt5677->pdata.jd2_gpio &&
  !rt5677->pdata.jd3_gpio)
  return 0;

 if (!i2c->irq) {
  dev_err(&i2c->dev, "No interrupt specified\n");
  return -EINVAL;
 }

 mutex_init(&rt5677->irq_lock);






 regmap_update_bits(rt5677->regmap, RT5677_DIG_MISC,
   RT5677_IRQ_DEBOUNCE_SEL_MASK,
   RT5677_IRQ_DEBOUNCE_SEL_RC);

 regmap_update_bits(rt5677->regmap, RT5677_GEN_CTRL1, 0xff, 0xff);


 if (rt5677->pdata.jd1_gpio) {
  jd_mask |= RT5677_SEL_GPIO_JD1_MASK;
  jd_val |= rt5677->pdata.jd1_gpio << RT5677_SEL_GPIO_JD1_SFT;
 }
 if (rt5677->pdata.jd2_gpio) {
  jd_mask |= RT5677_SEL_GPIO_JD2_MASK;
  jd_val |= rt5677->pdata.jd2_gpio << RT5677_SEL_GPIO_JD2_SFT;
 }
 if (rt5677->pdata.jd3_gpio) {
  jd_mask |= RT5677_SEL_GPIO_JD3_MASK;
  jd_val |= rt5677->pdata.jd3_gpio << RT5677_SEL_GPIO_JD3_SFT;
 }
 regmap_update_bits(rt5677->regmap, RT5677_JD_CTRL1, jd_mask, jd_val);


 regmap_update_bits(rt5677->regmap, RT5677_GPIO_CTRL1,
   RT5677_GPIO1_PIN_MASK, RT5677_GPIO1_PIN_IRQ);


 rt5677->domain = irq_domain_add_linear(i2c->dev.of_node,
   RT5677_IRQ_NUM, &rt5677_domain_ops, rt5677);
 if (!rt5677->domain) {
  dev_err(&i2c->dev, "Failed to create IRQ domain\n");
  return -ENOMEM;
 }

 ret = devm_request_threaded_irq(&i2c->dev, i2c->irq, ((void*)0), rt5677_irq,
   IRQF_TRIGGER_RISING | IRQF_ONESHOT,
   "rt5677", rt5677);
 if (ret)
  dev_err(&i2c->dev, "Failed to request IRQ: %d\n", ret);

 return ret;
}
