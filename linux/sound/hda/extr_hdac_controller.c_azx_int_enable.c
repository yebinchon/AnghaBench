
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_bus {int dummy; } ;


 int AZX_INT_CTRL_EN ;
 int AZX_INT_GLOBAL_EN ;
 int INTCTL ;
 int snd_hdac_chip_updatel (struct hdac_bus*,int ,int,int) ;

__attribute__((used)) static void azx_int_enable(struct hdac_bus *bus)
{

 snd_hdac_chip_updatel(bus, INTCTL,
         AZX_INT_CTRL_EN | AZX_INT_GLOBAL_EN,
         AZX_INT_CTRL_EN | AZX_INT_GLOBAL_EN);
}
