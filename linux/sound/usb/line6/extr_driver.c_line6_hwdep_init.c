
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fifo; int read_lock; int wait_queue; scalar_t__ active; } ;
struct usb_line6 {int card; TYPE_1__ messages; int process_message; } ;
struct snd_hwdep {int exclusive; struct usb_line6* private_data; int ops; int iface; int name; } ;


 int INIT_KFIFO (int ) ;
 int SNDRV_HWDEP_IFACE_LINE6 ;
 int hwdep_ops ;
 int init_waitqueue_head (int *) ;
 int line6_hwdep_push_message ;
 int mutex_init (int *) ;
 int snd_hwdep_new (int ,char*,int ,struct snd_hwdep**) ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int line6_hwdep_init(struct usb_line6 *line6)
{
 int err;
 struct snd_hwdep *hwdep;


 line6->process_message = line6_hwdep_push_message;
 line6->messages.active = 0;
 init_waitqueue_head(&line6->messages.wait_queue);
 mutex_init(&line6->messages.read_lock);
 INIT_KFIFO(line6->messages.fifo);

 err = snd_hwdep_new(line6->card, "config", 0, &hwdep);
 if (err < 0)
  goto end;
 strcpy(hwdep->name, "config");
 hwdep->iface = SNDRV_HWDEP_IFACE_LINE6;
 hwdep->ops = hwdep_ops;
 hwdep->private_data = line6;
 hwdep->exclusive = 1;

end:
 return err;
}
