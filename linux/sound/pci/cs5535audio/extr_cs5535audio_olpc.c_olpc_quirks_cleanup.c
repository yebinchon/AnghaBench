
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OLPC_GPIO_MIC_AC ;
 int gpio_free (int ) ;

void olpc_quirks_cleanup(void)
{
 gpio_free(OLPC_GPIO_MIC_AC);
}
