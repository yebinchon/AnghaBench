
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_peer_cred; int sk_peer_pid; } ;


 int current ;
 scalar_t__ get_current_cred () ;
 int get_pid (int ) ;
 int put_cred (scalar_t__) ;
 int put_pid (int ) ;
 int task_tgid (int ) ;

__attribute__((used)) static void init_peercred(struct sock *sk)
{
 put_pid(sk->sk_peer_pid);
 if (sk->sk_peer_cred)
  put_cred(sk->sk_peer_cred);
 sk->sk_peer_pid = get_pid(task_tgid(current));
 sk->sk_peer_cred = get_current_cred();
}
