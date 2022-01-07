
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_sock {int phdr; } ;


 scalar_t__ msg_dest_droppable (int *) ;

__attribute__((used)) static bool tsk_unreturnable(struct tipc_sock *tsk)
{
 return msg_dest_droppable(&tsk->phdr) != 0;
}
