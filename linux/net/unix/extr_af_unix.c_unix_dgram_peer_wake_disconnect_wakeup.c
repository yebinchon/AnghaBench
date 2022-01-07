
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int EPOLLOUT ;
 int EPOLLWRBAND ;
 int EPOLLWRNORM ;
 int sk_sleep (struct sock*) ;
 int unix_dgram_peer_wake_disconnect (struct sock*,struct sock*) ;
 int wake_up_interruptible_poll (int ,int) ;

__attribute__((used)) static void unix_dgram_peer_wake_disconnect_wakeup(struct sock *sk,
         struct sock *other)
{
 unix_dgram_peer_wake_disconnect(sk, other);
 wake_up_interruptible_poll(sk_sleep(sk),
       EPOLLOUT |
       EPOLLWRNORM |
       EPOLLWRBAND);
}
