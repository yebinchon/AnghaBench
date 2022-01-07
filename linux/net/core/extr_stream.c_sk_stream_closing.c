
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_state; } ;


 int TCPF_CLOSING ;
 int TCPF_FIN_WAIT1 ;
 int TCPF_LAST_ACK ;

__attribute__((used)) static inline int sk_stream_closing(struct sock *sk)
{
 return (1 << sk->sk_state) &
        (TCPF_FIN_WAIT1 | TCPF_CLOSING | TCPF_LAST_ACK);
}
