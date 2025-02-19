
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int NFS4_SHARE_ACCESS_READ ;
 int NFS4_SHARE_ACCESS_WRITE ;
 int NFSD_MAY_READ ;
 int NFSD_MAY_WRITE ;

__attribute__((used)) static inline int nfs4_access_to_access(u32 nfs4_access)
{
 int flags = 0;

 if (nfs4_access & NFS4_SHARE_ACCESS_READ)
  flags |= NFSD_MAY_READ;
 if (nfs4_access & NFS4_SHARE_ACCESS_WRITE)
  flags |= NFSD_MAY_WRITE;
 return flags;
}
