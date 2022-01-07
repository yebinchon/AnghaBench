
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfs4_ol_stateid {unsigned char st_deny_bmap; } ;


 int NFS4_SHARE_DENY_BOTH ;
 int WARN_ON_ONCE (int) ;

__attribute__((used)) static inline void
clear_deny(u32 deny, struct nfs4_ol_stateid *stp)
{
 unsigned char mask = 1 << deny;

 WARN_ON_ONCE(deny > NFS4_SHARE_DENY_BOTH);
 stp->st_deny_bmap &= ~mask;
}
