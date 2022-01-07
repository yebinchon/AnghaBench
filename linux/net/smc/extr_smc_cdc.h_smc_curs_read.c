
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union smc_host_cursor {int acurs; } ;
typedef int u64 ;
struct smc_connection {int acurs_lock; } ;


 int atomic64_read (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline u64 smc_curs_read(union smc_host_cursor *curs,
    struct smc_connection *conn)
{

 unsigned long flags;
 u64 ret;

 spin_lock_irqsave(&conn->acurs_lock, flags);
 ret = curs->acurs;
 spin_unlock_irqrestore(&conn->acurs_lock, flags);
 return ret;



}
