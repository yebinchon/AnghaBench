
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt5645_priv {int supplies; int btn_check_timer; int rcclock_work; int jack_detect_work; } ;
struct i2c_client {scalar_t__ irq; } ;


 int ARRAY_SIZE (int ) ;
 int cancel_delayed_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int free_irq (scalar_t__,struct rt5645_priv*) ;
 struct rt5645_priv* i2c_get_clientdata (struct i2c_client*) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static int rt5645_i2c_remove(struct i2c_client *i2c)
{
 struct rt5645_priv *rt5645 = i2c_get_clientdata(i2c);

 if (i2c->irq)
  free_irq(i2c->irq, rt5645);

 cancel_delayed_work_sync(&rt5645->jack_detect_work);
 cancel_delayed_work_sync(&rt5645->rcclock_work);
 del_timer_sync(&rt5645->btn_check_timer);

 regulator_bulk_disable(ARRAY_SIZE(rt5645->supplies), rt5645->supplies);

 return 0;
}
