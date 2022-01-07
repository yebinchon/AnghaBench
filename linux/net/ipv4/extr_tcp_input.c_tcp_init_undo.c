
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int undo_retrans; scalar_t__ retrans_out; int snd_una; int undo_marker; } ;



__attribute__((used)) static inline void tcp_init_undo(struct tcp_sock *tp)
{
 tp->undo_marker = tp->snd_una;

 tp->undo_retrans = tp->retrans_out ? : -1;
}
