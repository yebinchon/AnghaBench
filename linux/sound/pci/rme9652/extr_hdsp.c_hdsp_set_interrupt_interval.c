
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdsp {int lock; int control_register; } ;


 int HDSP_LatencyMask ;
 int HDSP_controlRegister ;
 int hdsp_compute_period_size (struct hdsp*) ;
 int hdsp_encode_latency (int) ;
 int hdsp_write (struct hdsp*,int ,int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int hdsp_set_interrupt_interval(struct hdsp *s, unsigned int frames)
{
 int n;

 spin_lock_irq(&s->lock);

 frames >>= 7;
 n = 0;
 while (frames) {
  n++;
  frames >>= 1;
 }

 s->control_register &= ~HDSP_LatencyMask;
 s->control_register |= hdsp_encode_latency(n);

 hdsp_write(s, HDSP_controlRegister, s->control_register);

 hdsp_compute_period_size(s);

 spin_unlock_irq(&s->lock);

 return 0;
}
