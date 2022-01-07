
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int const chrono_type; } ;
struct sock {int dummy; } ;
typedef enum tcp_chrono { ____Placeholder_tcp_chrono } tcp_chrono ;


 int tcp_chrono_set (struct tcp_sock*,int const) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

void tcp_chrono_start(struct sock *sk, const enum tcp_chrono type)
{
 struct tcp_sock *tp = tcp_sk(sk);






 if (type > tp->chrono_type)
  tcp_chrono_set(tp, type);
}
