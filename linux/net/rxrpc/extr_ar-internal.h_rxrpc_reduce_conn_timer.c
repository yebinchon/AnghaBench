
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_connection {int timer; } ;


 int timer_reduce (int *,unsigned long) ;

__attribute__((used)) static inline void rxrpc_reduce_conn_timer(struct rxrpc_connection *conn,
        unsigned long expire_at)
{
 timer_reduce(&conn->timer, expire_at);
}
