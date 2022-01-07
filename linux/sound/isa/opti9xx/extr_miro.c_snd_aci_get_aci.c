
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_miro_aci {scalar_t__ aci_port; } ;


 struct snd_miro_aci aci_device ;

struct snd_miro_aci *snd_aci_get_aci(void)
{
 if (aci_device.aci_port == 0)
  return ((void*)0);
 return &aci_device;
}
