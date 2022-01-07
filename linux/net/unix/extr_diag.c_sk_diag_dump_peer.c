
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;


 int UNIX_DIAG_PEER ;
 int nla_put_u32 (struct sk_buff*,int ,int) ;
 int sock_i_ino (struct sock*) ;
 int sock_put (struct sock*) ;
 struct sock* unix_peer_get (struct sock*) ;
 int unix_state_lock (struct sock*) ;
 int unix_state_unlock (struct sock*) ;

__attribute__((used)) static int sk_diag_dump_peer(struct sock *sk, struct sk_buff *nlskb)
{
 struct sock *peer;
 int ino;

 peer = unix_peer_get(sk);
 if (peer) {
  unix_state_lock(peer);
  ino = sock_i_ino(peer);
  unix_state_unlock(peer);
  sock_put(peer);

  return nla_put_u32(nlskb, UNIX_DIAG_PEER, ino);
 }

 return 0;
}
