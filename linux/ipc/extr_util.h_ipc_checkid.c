
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {scalar_t__ seq; } ;


 scalar_t__ ipcid_to_seqx (int) ;

__attribute__((used)) static inline int ipc_checkid(struct kern_ipc_perm *ipcp, int id)
{
 return ipcid_to_seqx(id) != ipcp->seq;
}
