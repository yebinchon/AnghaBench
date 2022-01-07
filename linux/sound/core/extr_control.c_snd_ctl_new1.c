
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int p; } ;
struct snd_kcontrol_new {unsigned int count; unsigned int access; int private_value; TYPE_3__ tlv; int put; int get; scalar_t__ info; int index; int name; int subdevice; int device; int iface; } ;
struct TYPE_5__ {int p; } ;
struct TYPE_4__ {int index; int name; int subdevice; int device; int iface; } ;
struct snd_kcontrol {void* private_data; int private_value; TYPE_2__ tlv; int put; int get; scalar_t__ info; TYPE_1__ id; } ;


 unsigned int SNDRV_CTL_ELEM_ACCESS_INACTIVE ;
 unsigned int SNDRV_CTL_ELEM_ACCESS_READWRITE ;
 unsigned int SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK ;
 unsigned int SNDRV_CTL_ELEM_ACCESS_TLV_COMMAND ;
 unsigned int SNDRV_CTL_ELEM_ACCESS_TLV_READWRITE ;
 unsigned int SNDRV_CTL_ELEM_ACCESS_VOLATILE ;
 int pr_warn (char*,int ,int ) ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_ctl_new (struct snd_kcontrol**,unsigned int,unsigned int,int *) ;
 scalar_t__ strcmp (int ,int ) ;
 int strlcpy (int ,int ,int) ;

struct snd_kcontrol *snd_ctl_new1(const struct snd_kcontrol_new *ncontrol,
      void *private_data)
{
 struct snd_kcontrol *kctl;
 unsigned int count;
 unsigned int access;
 int err;

 if (snd_BUG_ON(!ncontrol || !ncontrol->info))
  return ((void*)0);

 count = ncontrol->count;
 if (count == 0)
  count = 1;

 access = ncontrol->access;
 if (access == 0)
  access = SNDRV_CTL_ELEM_ACCESS_READWRITE;
 access &= (SNDRV_CTL_ELEM_ACCESS_READWRITE |
     SNDRV_CTL_ELEM_ACCESS_VOLATILE |
     SNDRV_CTL_ELEM_ACCESS_INACTIVE |
     SNDRV_CTL_ELEM_ACCESS_TLV_READWRITE |
     SNDRV_CTL_ELEM_ACCESS_TLV_COMMAND |
     SNDRV_CTL_ELEM_ACCESS_TLV_CALLBACK);

 err = snd_ctl_new(&kctl, count, access, ((void*)0));
 if (err < 0)
  return ((void*)0);


 kctl->id.iface = ncontrol->iface;
 kctl->id.device = ncontrol->device;
 kctl->id.subdevice = ncontrol->subdevice;
 if (ncontrol->name) {
  strlcpy(kctl->id.name, ncontrol->name, sizeof(kctl->id.name));
  if (strcmp(ncontrol->name, kctl->id.name) != 0)
   pr_warn("ALSA: Control name '%s' truncated to '%s'\n",
    ncontrol->name, kctl->id.name);
 }
 kctl->id.index = ncontrol->index;

 kctl->info = ncontrol->info;
 kctl->get = ncontrol->get;
 kctl->put = ncontrol->put;
 kctl->tlv.p = ncontrol->tlv.p;

 kctl->private_value = ncontrol->private_value;
 kctl->private_data = private_data;

 return kctl;
}
