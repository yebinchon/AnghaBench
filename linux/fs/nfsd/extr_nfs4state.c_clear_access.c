
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfs4_ol_stateid {unsigned char st_access_bmap; } ;


 int NFS4_SHARE_ACCESS_BOTH ;
 int WARN_ON_ONCE (int) ;

__attribute__((used)) static inline void
clear_access(u32 access, struct nfs4_ol_stateid *stp)
{
 unsigned char mask = 1 << access;

 WARN_ON_ONCE(access > NFS4_SHARE_ACCESS_BOTH);
 stp->st_access_bmap &= ~mask;
}
