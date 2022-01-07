
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int max_window; scalar_t__ pushed_seq; int write_seq; } ;


 int after (int ,scalar_t__) ;

__attribute__((used)) static inline bool forced_push(const struct tcp_sock *tp)
{
 return after(tp->write_seq, tp->pushed_seq + (tp->max_window >> 1));
}
