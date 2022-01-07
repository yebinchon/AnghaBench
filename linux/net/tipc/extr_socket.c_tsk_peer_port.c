
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_sock {int phdr; } ;


 int msg_destport (int *) ;

__attribute__((used)) static u32 tsk_peer_port(struct tipc_sock *tsk)
{
 return msg_destport(&tsk->phdr);
}
