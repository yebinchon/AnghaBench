
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int atalk_sockets_lock ;
 int sk_del_node_init (struct sock*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static inline void atalk_remove_socket(struct sock *sk)
{
 write_lock_bh(&atalk_sockets_lock);
 sk_del_node_init(sk);
 write_unlock_bh(&atalk_sockets_lock);
}
