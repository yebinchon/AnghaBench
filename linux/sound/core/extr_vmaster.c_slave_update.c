
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * value; } ;
struct TYPE_7__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_3__ value; int id; } ;
struct TYPE_5__ {int count; } ;
struct TYPE_8__ {int (* get ) (TYPE_4__*,struct snd_ctl_elem_value*) ;int id; } ;
struct link_slave {int * vals; TYPE_1__ info; TYPE_4__ slave; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct snd_ctl_elem_value*) ;
 struct snd_ctl_elem_value* kzalloc (int,int ) ;
 int stub1 (TYPE_4__*,struct snd_ctl_elem_value*) ;

__attribute__((used)) static int slave_update(struct link_slave *slave)
{
 struct snd_ctl_elem_value *uctl;
 int err, ch;

 uctl = kzalloc(sizeof(*uctl), GFP_KERNEL);
 if (!uctl)
  return -ENOMEM;
 uctl->id = slave->slave.id;
 err = slave->slave.get(&slave->slave, uctl);
 if (err < 0)
  goto error;
 for (ch = 0; ch < slave->info.count; ch++)
  slave->vals[ch] = uctl->value.integer.value[ch];
 error:
 kfree(uctl);
 return err < 0 ? err : 0;
}
