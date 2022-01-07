
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l3_pins {int gpio_clk; } ;


 int gpio_set_value (int ,int) ;

__attribute__((used)) static void l3_set_clk(struct l3_pins *adap, int val)
{
 gpio_set_value(adap->gpio_clk, val);
}
