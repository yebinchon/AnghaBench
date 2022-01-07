
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_efw {int unit; } ;
struct fw_device {int generation; int node_id; struct fw_card* card; } ;
struct fw_card {int dummy; } ;


 unsigned int SNDRV_CARDS ;
 int copy_resp_to_buf (struct snd_efw*,void*,size_t,int*) ;
 struct fw_device* fw_parent_device (int ) ;
 struct snd_efw** instances ;
 int instances_lock ;
 int smp_rmb () ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void
handle_resp_for_user(struct fw_card *card, int generation, int source,
       void *data, size_t length, int *rcode)
{
 struct fw_device *device;
 struct snd_efw *efw;
 unsigned int i;

 spin_lock_irq(&instances_lock);

 for (i = 0; i < SNDRV_CARDS; i++) {
  efw = instances[i];
  if (efw == ((void*)0))
   continue;
  device = fw_parent_device(efw->unit);
  if ((device->card != card) ||
      (device->generation != generation))
   continue;
  smp_rmb();
  if (device->node_id != source)
   continue;

  break;
 }
 if (i == SNDRV_CARDS)
  goto end;

 copy_resp_to_buf(efw, data, length, rcode);
end:
 spin_unlock_irq(&instances_lock);
}
