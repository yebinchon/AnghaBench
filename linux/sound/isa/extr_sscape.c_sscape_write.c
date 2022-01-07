
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soundscape {int lock; int io_base; } ;
typedef enum GA_REG { ____Placeholder_GA_REG } GA_REG ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sscape_write_unsafe (int ,int,unsigned char) ;

__attribute__((used)) static void sscape_write(struct soundscape *s, enum GA_REG reg,
    unsigned char val)
{
 unsigned long flags;

 spin_lock_irqsave(&s->lock, flags);
 sscape_write_unsafe(s->io_base, reg, val);
 spin_unlock_irqrestore(&s->lock, flags);
}
