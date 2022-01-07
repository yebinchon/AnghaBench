
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union smc_host_cursor {int dummy; } smc_host_cursor ;
struct smc_connection {TYPE_1__* sndbuf_desc; int peer_rmbe_space; int peer_rmbe_size; } ;
struct TYPE_2__ {int len; } ;


 int atomic_sub (size_t,int *) ;
 int smc_curs_add (int ,union smc_host_cursor*,size_t) ;
 int smp_mb__after_atomic () ;
 int smp_mb__before_atomic () ;

__attribute__((used)) static inline void smc_tx_advance_cursors(struct smc_connection *conn,
       union smc_host_cursor *prod,
       union smc_host_cursor *sent,
       size_t len)
{
 smc_curs_add(conn->peer_rmbe_size, prod, len);

 smp_mb__before_atomic();

 atomic_sub(len, &conn->peer_rmbe_space);

 smp_mb__after_atomic();
 smc_curs_add(conn->sndbuf_desc->len, sent, len);
}
