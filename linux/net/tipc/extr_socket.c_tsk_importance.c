
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_sock {int phdr; } ;


 int msg_importance (int *) ;

__attribute__((used)) static int tsk_importance(struct tipc_sock *tsk)
{
 return msg_importance(&tsk->phdr);
}
