
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union smc_cdc_cursor {int acurs; } ;
struct smc_connection {int acurs_lock; } ;


 int atomic64_read (int *) ;
 int atomic64_set (int *,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void smc_curs_copy_net(union smc_cdc_cursor *tgt,
         union smc_cdc_cursor *src,
         struct smc_connection *conn)
{

 unsigned long flags;

 spin_lock_irqsave(&conn->acurs_lock, flags);
 tgt->acurs = src->acurs;
 spin_unlock_irqrestore(&conn->acurs_lock, flags);



}
