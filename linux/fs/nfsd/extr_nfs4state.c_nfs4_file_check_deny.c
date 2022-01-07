
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfs4_file {int * fi_access; } ;
typedef int __be32 ;


 int NFS4_SHARE_DENY_BOTH ;
 int NFS4_SHARE_DENY_READ ;
 int NFS4_SHARE_DENY_WRITE ;
 size_t O_RDONLY ;
 size_t O_WRONLY ;
 scalar_t__ atomic_read (int *) ;
 int nfs_ok ;
 int nfserr_inval ;
 int nfserr_share_denied ;

__attribute__((used)) static __be32 nfs4_file_check_deny(struct nfs4_file *fp, u32 deny)
{

 if (deny) {

  if (deny & ~NFS4_SHARE_DENY_BOTH)
   return nfserr_inval;

  if ((deny & NFS4_SHARE_DENY_READ) &&
      atomic_read(&fp->fi_access[O_RDONLY]))
   return nfserr_share_denied;

  if ((deny & NFS4_SHARE_DENY_WRITE) &&
      atomic_read(&fp->fi_access[O_WRONLY]))
   return nfserr_share_denied;
 }
 return nfs_ok;
}
