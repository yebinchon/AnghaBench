
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int const chrono_type; } ;
struct sock {int dummy; } ;
typedef enum tcp_chrono { ____Placeholder_tcp_chrono } tcp_chrono ;


 int TCP_CHRONO_BUSY ;
 int TCP_CHRONO_UNSPEC ;
 int tcp_chrono_set (struct tcp_sock*,int ) ;
 scalar_t__ tcp_rtx_and_write_queues_empty (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

void tcp_chrono_stop(struct sock *sk, const enum tcp_chrono type)
{
 struct tcp_sock *tp = tcp_sk(sk);
 if (tcp_rtx_and_write_queues_empty(sk))
  tcp_chrono_set(tp, TCP_CHRONO_UNSPEC);
 else if (type == tp->chrono_type)
  tcp_chrono_set(tp, TCP_CHRONO_BUSY);
}
