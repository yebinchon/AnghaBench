
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mgmt_pending_cmd {int * sk; } ;
struct cmd_lookup {int * sk; } ;


 int sock_hold (int *) ;

__attribute__((used)) static void sk_lookup(struct mgmt_pending_cmd *cmd, void *data)
{
 struct cmd_lookup *match = data;

 if (match->sk == ((void*)0)) {
  match->sk = cmd->sk;
  sock_hold(match->sk);
 }
}
