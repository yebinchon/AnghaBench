
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int snd_nxt; int snd_sml; int snd_una; } ;


 scalar_t__ after (int ,int ) ;

__attribute__((used)) static bool tcp_minshall_check(const struct tcp_sock *tp)
{
 return after(tp->snd_sml, tp->snd_una) &&
  !after(tp->snd_sml, tp->snd_nxt);
}
