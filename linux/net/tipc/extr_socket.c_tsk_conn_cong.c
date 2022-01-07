
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_sock {scalar_t__ snt_unacked; scalar_t__ snd_win; } ;



__attribute__((used)) static bool tsk_conn_cong(struct tipc_sock *tsk)
{
 return tsk->snt_unacked > tsk->snd_win;
}
