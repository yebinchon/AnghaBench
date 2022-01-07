
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rds_sock {int rs_recv_lock; } ;


 int __rds_wake_sk_sleep (int ) ;
 int rds_rs_to_sk (struct rds_sock*) ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;

void rds_wake_sk_sleep(struct rds_sock *rs)
{
 unsigned long flags;

 read_lock_irqsave(&rs->rs_recv_lock, flags);
 __rds_wake_sk_sleep(rds_rs_to_sk(rs));
 read_unlock_irqrestore(&rs->rs_recv_lock, flags);
}
