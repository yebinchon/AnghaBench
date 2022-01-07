
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_sock {int phdr; } ;


 int msg_set_dest_droppable (int *,int) ;

__attribute__((used)) static void tsk_set_unreturnable(struct tipc_sock *tsk, bool unreturnable)
{
 msg_set_dest_droppable(&tsk->phdr, unreturnable ? 1 : 0);
}
