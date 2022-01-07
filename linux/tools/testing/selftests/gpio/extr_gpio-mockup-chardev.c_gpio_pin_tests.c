
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiochip_info {int dummy; } ;


 int GPIOHANDLE_REQUEST_ACTIVE_LOW ;
 int GPIOHANDLE_REQUEST_INPUT ;
 int GPIOHANDLE_REQUEST_OUTPUT ;
 int gpio_pin_test (struct gpiochip_info*,unsigned int,int,int) ;
 int printf (char*,...) ;

void gpio_pin_tests(struct gpiochip_info *cinfo, unsigned int line)
{
 printf("line<%d>", line);
 gpio_pin_test(cinfo, line, GPIOHANDLE_REQUEST_OUTPUT, 0);
 printf(".");
 gpio_pin_test(cinfo, line, GPIOHANDLE_REQUEST_OUTPUT, 1);
 printf(".");
 gpio_pin_test(cinfo, line,
        GPIOHANDLE_REQUEST_OUTPUT | GPIOHANDLE_REQUEST_ACTIVE_LOW,
        0);
 printf(".");
 gpio_pin_test(cinfo, line,
        GPIOHANDLE_REQUEST_OUTPUT | GPIOHANDLE_REQUEST_ACTIVE_LOW,
        1);
 printf(".");
 gpio_pin_test(cinfo, line, GPIOHANDLE_REQUEST_INPUT, 0);
 printf(".");
}
