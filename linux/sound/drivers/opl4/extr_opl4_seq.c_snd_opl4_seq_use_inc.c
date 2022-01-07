
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_opl4 {TYPE_1__* card; } ;
struct TYPE_2__ {int module; } ;


 int EFAULT ;
 int try_module_get (int ) ;

__attribute__((used)) static int snd_opl4_seq_use_inc(struct snd_opl4 *opl4)
{
 if (!try_module_get(opl4->card->module))
  return -EFAULT;
 return 0;
}
