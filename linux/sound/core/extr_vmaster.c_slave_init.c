
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int max; int min; } ;
struct TYPE_7__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_info {int count; TYPE_3__ value; int type; int id; } ;
struct TYPE_5__ {int count; int max_val; int min_val; int type; } ;
struct TYPE_8__ {int (* info ) (TYPE_4__*,struct snd_ctl_elem_info*) ;int id; } ;
struct link_slave {int flags; TYPE_1__ info; TYPE_4__ slave; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SNDRV_CTL_ELEM_TYPE_BOOLEAN ;
 int SNDRV_CTL_ELEM_TYPE_INTEGER ;
 int SND_CTL_SLAVE_NEED_UPDATE ;
 int kfree (struct snd_ctl_elem_info*) ;
 struct snd_ctl_elem_info* kmalloc (int,int ) ;
 int pr_err (char*) ;
 int slave_update (struct link_slave*) ;
 int stub1 (TYPE_4__*,struct snd_ctl_elem_info*) ;

__attribute__((used)) static int slave_init(struct link_slave *slave)
{
 struct snd_ctl_elem_info *uinfo;
 int err;

 if (slave->info.count) {

  if (slave->flags & SND_CTL_SLAVE_NEED_UPDATE)
   return slave_update(slave);
  return 0;
 }

 uinfo = kmalloc(sizeof(*uinfo), GFP_KERNEL);
 if (!uinfo)
  return -ENOMEM;
 uinfo->id = slave->slave.id;
 err = slave->slave.info(&slave->slave, uinfo);
 if (err < 0) {
  kfree(uinfo);
  return err;
 }
 slave->info.type = uinfo->type;
 slave->info.count = uinfo->count;
 if (slave->info.count > 2 ||
     (slave->info.type != SNDRV_CTL_ELEM_TYPE_INTEGER &&
      slave->info.type != SNDRV_CTL_ELEM_TYPE_BOOLEAN)) {
  pr_err("ALSA: vmaster: invalid slave element\n");
  kfree(uinfo);
  return -EINVAL;
 }
 slave->info.min_val = uinfo->value.integer.min;
 slave->info.max_val = uinfo->value.integer.max;
 kfree(uinfo);

 return slave_update(slave);
}
