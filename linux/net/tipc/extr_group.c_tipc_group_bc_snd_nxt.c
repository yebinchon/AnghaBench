
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tipc_group {int bc_snd_nxt; } ;



u16 tipc_group_bc_snd_nxt(struct tipc_group *grp)
{
 return grp->bc_snd_nxt;
}
