
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_sock {int phdr; } ;


 int EINVAL ;
 int TIPC_CRITICAL_IMPORTANCE ;
 int msg_set_importance (int *,int ) ;

__attribute__((used)) static int tsk_set_importance(struct tipc_sock *tsk, int imp)
{
 if (imp > TIPC_CRITICAL_IMPORTANCE)
  return -EINVAL;
 msg_set_importance(&tsk->phdr, (u32)imp);
 return 0;
}
