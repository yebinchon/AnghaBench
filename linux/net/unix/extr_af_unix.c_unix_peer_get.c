
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int sock_hold (struct sock*) ;
 struct sock* unix_peer (struct sock*) ;
 int unix_state_lock (struct sock*) ;
 int unix_state_unlock (struct sock*) ;

struct sock *unix_peer_get(struct sock *s)
{
 struct sock *peer;

 unix_state_lock(s);
 peer = unix_peer(s);
 if (peer)
  sock_hold(peer);
 unix_state_unlock(s);
 return peer;
}
