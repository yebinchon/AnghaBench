
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * value; } ;
struct TYPE_6__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;
struct TYPE_4__ {int count; } ;
struct link_slave {int * vals; TYPE_1__ info; } ;


 int slave_init (struct link_slave*) ;

__attribute__((used)) static int slave_get_val(struct link_slave *slave,
    struct snd_ctl_elem_value *ucontrol)
{
 int err, ch;

 err = slave_init(slave);
 if (err < 0)
  return err;
 for (ch = 0; ch < slave->info.count; ch++)
  ucontrol->value.integer.value[ch] = slave->vals[ch];
 return 0;
}
