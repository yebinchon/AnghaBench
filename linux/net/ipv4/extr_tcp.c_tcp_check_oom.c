
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int net_info_ratelimited (char*) ;
 int tcp_out_of_memory (struct sock*) ;
 int tcp_too_many_orphans (struct sock*,int) ;

bool tcp_check_oom(struct sock *sk, int shift)
{
 bool too_many_orphans, out_of_socket_memory;

 too_many_orphans = tcp_too_many_orphans(sk, shift);
 out_of_socket_memory = tcp_out_of_memory(sk);

 if (too_many_orphans)
  net_info_ratelimited("too many orphaned sockets\n");
 if (out_of_socket_memory)
  net_info_ratelimited("out of memory -- consider tuning tcp_mem\n");
 return too_many_orphans || out_of_socket_memory;
}
