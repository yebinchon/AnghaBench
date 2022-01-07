
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_host_interface {int extralen; int extra; } ;
struct uac3_power_domain_descriptor {int bNrEntities; unsigned char* baEntityID; int waRecoveryTime2; int waRecoveryTime1; int bPowerDomainID; } ;
struct snd_usb_power_domain {void* pd_d2d0_rec; void* pd_d1d0_rec; int pd_id; } ;


 int GFP_KERNEL ;
 int UAC3_POWER_DOMAIN ;
 int UAC_VERSION_3 ;
 int kfree (struct snd_usb_power_domain*) ;
 struct snd_usb_power_domain* kzalloc (int,int ) ;
 void* le16_to_cpu (int ) ;
 void* snd_usb_find_csint_desc (int ,int ,void*,int ) ;
 int snd_usb_validate_audio_desc (void*,int ) ;

struct snd_usb_power_domain *
snd_usb_find_power_domain(struct usb_host_interface *ctrl_iface,
     unsigned char id)
{
 struct snd_usb_power_domain *pd;
 void *p;

 pd = kzalloc(sizeof(*pd), GFP_KERNEL);
 if (!pd)
  return ((void*)0);

 p = ((void*)0);
 while ((p = snd_usb_find_csint_desc(ctrl_iface->extra,
         ctrl_iface->extralen,
         p, UAC3_POWER_DOMAIN)) != ((void*)0)) {
  struct uac3_power_domain_descriptor *pd_desc = p;
  int i;

  if (!snd_usb_validate_audio_desc(p, UAC_VERSION_3))
   continue;
  for (i = 0; i < pd_desc->bNrEntities; i++) {
   if (pd_desc->baEntityID[i] == id) {
    pd->pd_id = pd_desc->bPowerDomainID;
    pd->pd_d1d0_rec =
     le16_to_cpu(pd_desc->waRecoveryTime1);
    pd->pd_d2d0_rec =
     le16_to_cpu(pd_desc->waRecoveryTime2);
    return pd;
   }
  }
 }

 kfree(pd);
 return ((void*)0);
}
