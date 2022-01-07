
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tcp_fastopen_context {int dummy; } ;
struct TYPE_2__ {int tcp_fastopen_ctx; } ;
struct net {TYPE_1__ ipv4; } ;
typedef int key ;


 int TCP_FASTOPEN_KEY_LENGTH ;
 int get_random_bytes (int *,int) ;
 struct tcp_fastopen_context* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int tcp_fastopen_reset_cipher (struct net*,int *,int *,int *) ;

void tcp_fastopen_init_key_once(struct net *net)
{
 u8 key[TCP_FASTOPEN_KEY_LENGTH];
 struct tcp_fastopen_context *ctxt;

 rcu_read_lock();
 ctxt = rcu_dereference(net->ipv4.tcp_fastopen_ctx);
 if (ctxt) {
  rcu_read_unlock();
  return;
 }
 rcu_read_unlock();







 get_random_bytes(key, sizeof(key));
 tcp_fastopen_reset_cipher(net, ((void*)0), key, ((void*)0));
}
