
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int irq_ok; int data_port; int control_port; int irq; } ;
typedef TYPE_1__ snd_wavefront_t ;


 int HZ ;
 int STAT_CAN_READ ;
 int WFC_HARDWARE_VERSION ;
 int outb (int,int ) ;
 int ramcheck_time ;
 int reset_time ;
 int snd_printk (char*,...) ;
 int snd_wavefront_interrupt_bits (int ) ;
 int wavefront_read (TYPE_1__*) ;
 int wavefront_should_cause_interrupt (TYPE_1__*,int,int ,int) ;
 int wavefront_wait (TYPE_1__*,int ) ;

__attribute__((used)) static int
wavefront_reset_to_cleanliness (snd_wavefront_t *dev)

{
 int bits;
 int hwv[2];



 bits = snd_wavefront_interrupt_bits (dev->irq);



 outb (0x0, dev->control_port);
 outb (0x80 | 0x40 | bits, dev->data_port);
 wavefront_should_cause_interrupt(dev, 0x80|0x40|0x10|0x1,
      dev->control_port,
      (reset_time*HZ)/100);





 if (!dev->irq_ok) {
  snd_printk ("intr not received after h/w un-reset.\n");
  goto gone_bad;
 }
 wavefront_should_cause_interrupt(dev, WFC_HARDWARE_VERSION,
      dev->data_port, ramcheck_time*HZ);

 if (!dev->irq_ok) {
  snd_printk ("post-RAM-check interrupt not received.\n");
  goto gone_bad;
 }

 if (!wavefront_wait (dev, STAT_CAN_READ)) {
  snd_printk ("no response to HW version cmd.\n");
  goto gone_bad;
 }

 if ((hwv[0] = wavefront_read (dev)) == -1) {
  snd_printk ("board not responding correctly.\n");
  goto gone_bad;
 }

 if (hwv[0] == 0xFF) {





  if ((hwv[0] = wavefront_read (dev)) == -1) {
   snd_printk ("on-board RAM test failed "
        "(bad error code).\n");
  } else {
   snd_printk ("on-board RAM test failed "
        "(error code: 0x%x).\n",
    hwv[0]);
  }
  goto gone_bad;
 }



 if ((hwv[1] = wavefront_read (dev)) == -1) {
  snd_printk ("incorrect h/w response.\n");
  goto gone_bad;
 }

 snd_printk ("hardware version %d.%d\n",
      hwv[0], hwv[1]);

 return 0;


     gone_bad:
 return (1);
}
