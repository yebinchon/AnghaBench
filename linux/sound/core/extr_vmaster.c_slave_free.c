
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_2__ {int (* private_free ) (TYPE_1__*) ;} ;
struct link_slave {int list; scalar_t__ master; TYPE_1__ slave; } ;


 int kfree (struct link_slave*) ;
 int list_del (int *) ;
 struct link_slave* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void slave_free(struct snd_kcontrol *kcontrol)
{
 struct link_slave *slave = snd_kcontrol_chip(kcontrol);
 if (slave->slave.private_free)
  slave->slave.private_free(&slave->slave);
 if (slave->master)
  list_del(&slave->list);
 kfree(slave);
}
