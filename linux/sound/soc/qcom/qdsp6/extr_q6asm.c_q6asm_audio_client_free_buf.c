
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audio_port_data {int * buf; scalar_t__ num_periods; } ;
struct audio_client {int lock; } ;


 int kfree (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void q6asm_audio_client_free_buf(struct audio_client *ac,
     struct audio_port_data *port)
{
 unsigned long flags;

 spin_lock_irqsave(&ac->lock, flags);
 port->num_periods = 0;
 kfree(port->buf);
 port->buf = ((void*)0);
 spin_unlock_irqrestore(&ac->lock, flags);
}
