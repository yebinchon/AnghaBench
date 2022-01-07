
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TCPF_CLOSE_WAIT ;
 int TCPF_ESTABLISHED ;
 int TCPF_FIN_WAIT1 ;
 int TCPF_FIN_WAIT2 ;
 int TCPF_SYN_RECV ;

__attribute__((used)) static inline bool tcp_need_reset(int state)
{
 return (1 << state) &
        (TCPF_ESTABLISHED | TCPF_CLOSE_WAIT | TCPF_FIN_WAIT1 |
  TCPF_FIN_WAIT2 | TCPF_SYN_RECV);
}
