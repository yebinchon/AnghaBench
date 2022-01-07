
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_connection {int active_chans; struct rxrpc_channel* channels; } ;
struct rxrpc_channel {int call; } ;


 int rcu_assign_pointer (int ,int *) ;

__attribute__((used)) static void rxrpc_deactivate_one_channel(struct rxrpc_connection *conn,
      unsigned int channel)
{
 struct rxrpc_channel *chan = &conn->channels[channel];

 rcu_assign_pointer(chan->call, ((void*)0));
 conn->active_chans &= ~(1 << channel);
}
