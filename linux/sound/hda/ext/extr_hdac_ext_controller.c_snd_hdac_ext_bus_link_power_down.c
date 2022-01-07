
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_ext_link {int ml_addr; } ;


 int AZX_MLCTL_SPA ;
 int AZX_REG_ML_LCTL ;
 int check_hdac_link_power_active (struct hdac_ext_link*,int) ;
 int snd_hdac_updatel (int ,int ,int ,int ) ;

int snd_hdac_ext_bus_link_power_down(struct hdac_ext_link *link)
{
 snd_hdac_updatel(link->ml_addr, AZX_REG_ML_LCTL, AZX_MLCTL_SPA, 0);

 return check_hdac_link_power_active(link, 0);
}
