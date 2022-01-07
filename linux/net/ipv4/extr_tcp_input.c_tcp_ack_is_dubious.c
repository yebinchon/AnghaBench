
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ icsk_ca_state; } ;


 int const FLAG_CA_ALERT ;
 int const FLAG_NOT_DUP ;
 scalar_t__ TCP_CA_Open ;
 TYPE_1__* inet_csk (struct sock const*) ;

__attribute__((used)) static inline bool tcp_ack_is_dubious(const struct sock *sk, const int flag)
{
 return !(flag & FLAG_NOT_DUP) || (flag & FLAG_CA_ALERT) ||
  inet_csk(sk)->icsk_ca_state != TCP_CA_Open;
}
