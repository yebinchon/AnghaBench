
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * p; } ;
struct snd_kcontrol_new {int private_value; int put; int get; int info; TYPE_1__ tlv; int access; int name; int iface; } ;
struct snd_ice1712 {int card; } ;
typedef int cont ;
struct TYPE_5__ {int type; int name; } ;


 int ARRAY_SIZE (TYPE_2__*) ;

 int EINVAL ;

 int SNDRV_CTL_ELEM_ACCESS_READWRITE ;
 int SNDRV_CTL_ELEM_ACCESS_TLV_READ ;
 int SNDRV_CTL_ELEM_IFACE_MIXER ;


 int * db_scale_gain1 ;
 int * db_scale_gain2 ;
 int memset (struct snd_kcontrol_new*,int ,int) ;
 TYPE_2__* se200pci_cont ;
 int se200pci_cont_boolean_get ;
 int se200pci_cont_boolean_info ;
 int se200pci_cont_boolean_put ;
 int se200pci_cont_enum_get ;
 int se200pci_cont_enum_info ;
 int se200pci_cont_enum_put ;
 int se200pci_cont_volume_get ;
 int se200pci_cont_volume_info ;
 int se200pci_cont_volume_put ;
 int snd_BUG () ;
 int snd_ctl_add (int ,int ) ;
 int snd_ctl_new1 (struct snd_kcontrol_new*,struct snd_ice1712*) ;

__attribute__((used)) static int se200pci_add_controls(struct snd_ice1712 *ice)
{
 int i;
 struct snd_kcontrol_new cont;
 int err;

 memset(&cont, 0, sizeof(cont));
 cont.iface = SNDRV_CTL_ELEM_IFACE_MIXER;
 for (i = 0; i < ARRAY_SIZE(se200pci_cont); i++) {
  cont.private_value = i;
  cont.name = se200pci_cont[i].name;
  cont.access = SNDRV_CTL_ELEM_ACCESS_READWRITE;
  cont.tlv.p = ((void*)0);
  switch (se200pci_cont[i].type) {
  case 129:
  case 128:
   cont.info = se200pci_cont_volume_info;
   cont.get = se200pci_cont_volume_get;
   cont.put = se200pci_cont_volume_put;
   cont.access |= SNDRV_CTL_ELEM_ACCESS_TLV_READ;
   if (se200pci_cont[i].type == 129)
    cont.tlv.p = db_scale_gain1;
   else
    cont.tlv.p = db_scale_gain2;
   break;
  case 131:
   cont.info = se200pci_cont_boolean_info;
   cont.get = se200pci_cont_boolean_get;
   cont.put = se200pci_cont_boolean_put;
   break;
  case 130:
   cont.info = se200pci_cont_enum_info;
   cont.get = se200pci_cont_enum_get;
   cont.put = se200pci_cont_enum_put;
   break;
  default:
   snd_BUG();
   return -EINVAL;
  }
  err = snd_ctl_add(ice->card, snd_ctl_new1(&cont, ice));
  if (err < 0)
   return err;
 }

 return 0;
}
