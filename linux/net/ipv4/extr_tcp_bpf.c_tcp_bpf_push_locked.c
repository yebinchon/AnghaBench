
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int dummy; } ;
struct sk_msg {int dummy; } ;


 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int tcp_bpf_push (struct sock*,struct sk_msg*,int ,int,int) ;

__attribute__((used)) static int tcp_bpf_push_locked(struct sock *sk, struct sk_msg *msg,
          u32 apply_bytes, int flags, bool uncharge)
{
 int ret;

 lock_sock(sk);
 ret = tcp_bpf_push(sk, msg, apply_bytes, flags, uncharge);
 release_sock(sk);
 return ret;
}
