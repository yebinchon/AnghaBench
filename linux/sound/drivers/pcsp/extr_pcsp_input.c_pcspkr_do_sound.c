
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int i8253_lock ;
 int inb_p (int) ;
 int outb (int,int) ;
 int outb_p (int,int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void pcspkr_do_sound(unsigned int count)
{
 unsigned long flags;

 raw_spin_lock_irqsave(&i8253_lock, flags);

 if (count) {

  outb_p(0xB6, 0x43);

  outb_p(count & 0xff, 0x42);
  outb((count >> 8) & 0xff, 0x42);

  outb_p(inb_p(0x61) | 3, 0x61);
 } else {

  outb(inb_p(0x61) & 0xFC, 0x61);
 }

 raw_spin_unlock_irqrestore(&i8253_lock, flags);
}
