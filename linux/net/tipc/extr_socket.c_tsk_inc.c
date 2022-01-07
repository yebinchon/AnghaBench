
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tipc_sock {int peer_caps; } ;


 int FLOWCTL_BLK_SZ ;
 int TIPC_BLOCK_FLOWCTL ;
 scalar_t__ likely (int) ;

__attribute__((used)) static u16 tsk_inc(struct tipc_sock *tsk, int msglen)
{
 if (likely(tsk->peer_caps & TIPC_BLOCK_FLOWCTL))
  return ((msglen / FLOWCTL_BLK_SZ) + 1);
 return 1;
}
