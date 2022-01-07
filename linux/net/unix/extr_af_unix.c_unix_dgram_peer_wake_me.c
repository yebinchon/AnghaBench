
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int SOCK_DEAD ;
 int sock_flag (struct sock*,int ) ;
 int unix_dgram_peer_wake_connect (struct sock*,struct sock*) ;
 int unix_dgram_peer_wake_disconnect (struct sock*,struct sock*) ;
 scalar_t__ unix_recvq_full (struct sock*) ;

__attribute__((used)) static int unix_dgram_peer_wake_me(struct sock *sk, struct sock *other)
{
 int connected;

 connected = unix_dgram_peer_wake_connect(sk, other);






 if (unix_recvq_full(other) && !sock_flag(other, SOCK_DEAD))
  return 1;

 if (connected)
  unix_dgram_peer_wake_disconnect(sk, other);

 return 0;
}
