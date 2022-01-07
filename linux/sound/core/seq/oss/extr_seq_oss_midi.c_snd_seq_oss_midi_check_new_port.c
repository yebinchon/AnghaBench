
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int port; int client; } ;
struct snd_seq_port_info {int type; int capability; int name; TYPE_1__ addr; } ;
struct seq_oss_midi {int flags; int seq_device; int coder; int name; int use_lock; scalar_t__ opened; int port; int client; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_MIDI_EVENT_BUF ;
 int PERM_READ ;
 int PERM_WRITE ;
 int SNDRV_SEQ_OSS_MAX_MIDI_DEVS ;
 int SNDRV_SEQ_PORT_TYPE_MIDI_GENERIC ;
 struct seq_oss_midi* find_slot (int ,int ) ;
 int kfree (struct seq_oss_midi*) ;
 struct seq_oss_midi* kzalloc (int,int ) ;
 int max_midi_devs ;
 struct seq_oss_midi** midi_devs ;
 int pr_err (char*) ;
 int register_lock ;
 int snd_midi_event_free (int ) ;
 scalar_t__ snd_midi_event_new (int ,int *) ;
 int snd_midi_event_no_status (int ,int) ;
 int snd_use_lock_free (int *) ;
 int snd_use_lock_init (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int strlcpy (int ,int ,int) ;

int
snd_seq_oss_midi_check_new_port(struct snd_seq_port_info *pinfo)
{
 int i;
 struct seq_oss_midi *mdev;
 unsigned long flags;


 if (! (pinfo->type & SNDRV_SEQ_PORT_TYPE_MIDI_GENERIC))
  return 0;

 if ((pinfo->capability & PERM_WRITE) != PERM_WRITE &&
     (pinfo->capability & PERM_READ) != PERM_READ)
  return 0;




 if ((mdev = find_slot(pinfo->addr.client, pinfo->addr.port)) != ((void*)0)) {

  snd_use_lock_free(&mdev->use_lock);
  return 0;
 }




 mdev = kzalloc(sizeof(*mdev), GFP_KERNEL);
 if (!mdev)
  return -ENOMEM;


 mdev->client = pinfo->addr.client;
 mdev->port = pinfo->addr.port;
 mdev->flags = pinfo->capability;
 mdev->opened = 0;
 snd_use_lock_init(&mdev->use_lock);


 strlcpy(mdev->name, pinfo->name, sizeof(mdev->name));


 if (snd_midi_event_new(MAX_MIDI_EVENT_BUF, &mdev->coder) < 0) {
  pr_err("ALSA: seq_oss: can't malloc midi coder\n");
  kfree(mdev);
  return -ENOMEM;
 }

 snd_midi_event_no_status(mdev->coder, 1);




 spin_lock_irqsave(&register_lock, flags);
 for (i = 0; i < max_midi_devs; i++) {
  if (midi_devs[i] == ((void*)0))
   break;
 }
 if (i >= max_midi_devs) {
  if (max_midi_devs >= SNDRV_SEQ_OSS_MAX_MIDI_DEVS) {
   spin_unlock_irqrestore(&register_lock, flags);
   snd_midi_event_free(mdev->coder);
   kfree(mdev);
   return -ENOMEM;
  }
  max_midi_devs++;
 }
 mdev->seq_device = i;
 midi_devs[mdev->seq_device] = mdev;
 spin_unlock_irqrestore(&register_lock, flags);

 return 0;
}
