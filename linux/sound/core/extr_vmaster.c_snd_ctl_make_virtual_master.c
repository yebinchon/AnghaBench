
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol_new {char* name; void* info; int iface; } ;
struct TYPE_4__ {int p; } ;
struct snd_kcontrol {TYPE_2__ tlv; TYPE_1__* vd; int private_free; int put; int get; void* info; } ;
struct link_master {int tlv; int slaves; } ;
typedef int knew ;
struct TYPE_3__ {int access; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int SNDRV_CTL_ELEM_ACCESS_TLV_READ ;
 int SNDRV_CTL_ELEM_IFACE_MIXER ;
 size_t SNDRV_CTL_TLVO_TYPE ;
 unsigned int SNDRV_CTL_TLVT_DB_MINMAX ;
 unsigned int SNDRV_CTL_TLVT_DB_MINMAX_MUTE ;
 unsigned int SNDRV_CTL_TLVT_DB_SCALE ;
 int kfree (struct link_master*) ;
 struct link_master* kzalloc (int,int ) ;
 int master_free ;
 int master_get ;
 void* master_info ;
 int master_put ;
 int memcpy (int ,unsigned int const*,int) ;
 int memset (struct snd_kcontrol_new*,int ,int) ;
 struct snd_kcontrol* snd_ctl_new1 (struct snd_kcontrol_new*,struct link_master*) ;

struct snd_kcontrol *snd_ctl_make_virtual_master(char *name,
       const unsigned int *tlv)
{
 struct link_master *master;
 struct snd_kcontrol *kctl;
 struct snd_kcontrol_new knew;

 memset(&knew, 0, sizeof(knew));
 knew.iface = SNDRV_CTL_ELEM_IFACE_MIXER;
 knew.name = name;
 knew.info = master_info;

 master = kzalloc(sizeof(*master), GFP_KERNEL);
 if (!master)
  return ((void*)0);
 INIT_LIST_HEAD(&master->slaves);

 kctl = snd_ctl_new1(&knew, master);
 if (!kctl) {
  kfree(master);
  return ((void*)0);
 }

 kctl->info = master_info;
 kctl->get = master_get;
 kctl->put = master_put;
 kctl->private_free = master_free;


 if (tlv) {
  unsigned int type = tlv[SNDRV_CTL_TLVO_TYPE];
  if (type == SNDRV_CTL_TLVT_DB_SCALE ||
      type == SNDRV_CTL_TLVT_DB_MINMAX ||
      type == SNDRV_CTL_TLVT_DB_MINMAX_MUTE) {
   kctl->vd[0].access |= SNDRV_CTL_ELEM_ACCESS_TLV_READ;
   memcpy(master->tlv, tlv, sizeof(master->tlv));
   kctl->tlv.p = master->tlv;
  }
 }

 return kctl;
}
