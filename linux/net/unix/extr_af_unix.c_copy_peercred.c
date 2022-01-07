
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_peer_cred; int sk_peer_pid; } ;


 scalar_t__ get_cred (scalar_t__) ;
 int get_pid (int ) ;
 int put_cred (scalar_t__) ;
 int put_pid (int ) ;

__attribute__((used)) static void copy_peercred(struct sock *sk, struct sock *peersk)
{
 put_pid(sk->sk_peer_pid);
 if (sk->sk_peer_cred)
  put_cred(sk->sk_peer_cred);
 sk->sk_peer_pid = get_pid(peersk->sk_peer_pid);
 sk->sk_peer_cred = get_cred(peersk->sk_peer_cred);
}
