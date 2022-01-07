
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_context {int list; } ;


 int list_move_tail (int *,int *) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tls_device_gc_list ;
 int tls_device_gc_work ;
 int tls_device_lock ;

__attribute__((used)) static void tls_device_queue_ctx_destruction(struct tls_context *ctx)
{
 unsigned long flags;

 spin_lock_irqsave(&tls_device_lock, flags);
 list_move_tail(&ctx->list, &tls_device_gc_list);




 schedule_work(&tls_device_gc_work);

 spin_unlock_irqrestore(&tls_device_lock, flags);
}
