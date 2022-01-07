
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soundscape {scalar_t__ ic_type; scalar_t__ type; int lock; int io_base; } ;


 int GA_HMCTL_REG ;
 long HOST_CTRL_IO (int ) ;
 scalar_t__ IC_ODIE ;
 scalar_t__ IC_OPUS ;
 scalar_t__ MEDIA_FX ;
 long ODIE_ADDR_IO (int ) ;
 long ODIE_DATA_IO (int ) ;
 scalar_t__ SSCAPE_VIVO ;
 int activate_ad1845_unsafe (int ) ;
 int inb (long) ;
 int msleep (int) ;
 int outb (int,long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sscape_read_unsafe (int ,int ) ;
 int sscape_write_unsafe (int ,int ,unsigned int) ;

__attribute__((used)) static int detect_sscape(struct soundscape *s, long wss_io)
{
 unsigned long flags;
 unsigned d;
 int retval = 0;

 spin_lock_irqsave(&s->lock, flags);






 if ((inb(HOST_CTRL_IO(s->io_base)) & 0x78) != 0)
  goto _done;

 d = inb(ODIE_ADDR_IO(s->io_base)) & 0xf0;
 if ((d & 0x80) != 0)
  goto _done;

 if (d == 0)
  s->ic_type = IC_ODIE;
 else if ((d & 0x60) != 0)
  s->ic_type = IC_OPUS;
 else
  goto _done;

 outb(0xfa, ODIE_ADDR_IO(s->io_base));
 if ((inb(ODIE_ADDR_IO(s->io_base)) & 0x9f) != 0x0a)
  goto _done;

 outb(0xfe, ODIE_ADDR_IO(s->io_base));
 if ((inb(ODIE_ADDR_IO(s->io_base)) & 0x9f) != 0x0e)
  goto _done;

 outb(0xfe, ODIE_ADDR_IO(s->io_base));
 d = inb(ODIE_DATA_IO(s->io_base));
 if (s->type != SSCAPE_VIVO && (d & 0x9f) != 0x0e)
  goto _done;

 if (s->ic_type == IC_OPUS)
  activate_ad1845_unsafe(s->io_base);

 if (s->type == SSCAPE_VIVO)
  wss_io += 4;

 d = sscape_read_unsafe(s->io_base, GA_HMCTL_REG);
 sscape_write_unsafe(s->io_base, GA_HMCTL_REG, d | 0xc0);


 for (d = 0; d < 500; d++) {
  if ((inb(wss_io) & 0x80) == 0)
   break;
  spin_unlock_irqrestore(&s->lock, flags);
  msleep(1);
  spin_lock_irqsave(&s->lock, flags);
 }

 if ((inb(wss_io) & 0x80) != 0)
  goto _done;

 if (inb(wss_io + 2) == 0xff)
  goto _done;

 d = sscape_read_unsafe(s->io_base, GA_HMCTL_REG) & 0x3f;
 sscape_write_unsafe(s->io_base, GA_HMCTL_REG, d);

 if ((inb(wss_io) & 0x80) != 0)
  s->type = MEDIA_FX;

 d = sscape_read_unsafe(s->io_base, GA_HMCTL_REG);
 sscape_write_unsafe(s->io_base, GA_HMCTL_REG, d | 0xc0);

 for (d = 0; d < 500; d++) {
  if ((inb(wss_io) & 0x80) == 0)
   break;
  spin_unlock_irqrestore(&s->lock, flags);
  msleep(1);
  spin_lock_irqsave(&s->lock, flags);
 }




 retval = 1;

_done:
 spin_unlock_irqrestore(&s->lock, flags);
 return retval;
}
