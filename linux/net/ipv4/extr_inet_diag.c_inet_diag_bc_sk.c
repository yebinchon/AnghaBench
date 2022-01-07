
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_state; scalar_t__ sk_mark; int sk_userlocks; int sk_bound_dev_if; int sk_family; } ;
struct nlattr {int dummy; } ;
struct inet_sock {int inet_dport; int inet_num; } ;
struct inet_diag_entry {scalar_t__ mark; int userlocks; int ifindex; int dport; int sport; int family; } ;
struct TYPE_2__ {scalar_t__ ir_mark; } ;


 scalar_t__ TCP_NEW_SYN_RECV ;
 int entry_fill_addrs (struct inet_diag_entry*,struct sock*) ;
 int inet_diag_bc_run (struct nlattr const*,struct inet_diag_entry*) ;
 int inet_reqsk (struct sock*) ;
 TYPE_1__* inet_rsk (int ) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int ntohs (int ) ;
 scalar_t__ sk_fullsock (struct sock*) ;

int inet_diag_bc_sk(const struct nlattr *bc, struct sock *sk)
{
 struct inet_sock *inet = inet_sk(sk);
 struct inet_diag_entry entry;

 if (!bc)
  return 1;

 entry.family = sk->sk_family;
 entry_fill_addrs(&entry, sk);
 entry.sport = inet->inet_num;
 entry.dport = ntohs(inet->inet_dport);
 entry.ifindex = sk->sk_bound_dev_if;
 entry.userlocks = sk_fullsock(sk) ? sk->sk_userlocks : 0;
 if (sk_fullsock(sk))
  entry.mark = sk->sk_mark;
 else if (sk->sk_state == TCP_NEW_SYN_RECV)
  entry.mark = inet_rsk(inet_reqsk(sk))->ir_mark;
 else
  entry.mark = 0;

 return inet_diag_bc_run(bc, &entry);
}
