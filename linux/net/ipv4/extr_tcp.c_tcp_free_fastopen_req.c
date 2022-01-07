
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int * fastopen_req; } ;


 int kfree (int *) ;

void tcp_free_fastopen_req(struct tcp_sock *tp)
{
 if (tp->fastopen_req) {
  kfree(tp->fastopen_req);
  tp->fastopen_req = ((void*)0);
 }
}
