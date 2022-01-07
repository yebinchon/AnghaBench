
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_ol_stateid {struct nfs4_ol_stateid* st_openstp; } ;
typedef int __be32 ;


 int RD_STATE ;
 int WR_STATE ;
 int access_permit_read (struct nfs4_ol_stateid*) ;
 int access_permit_write (struct nfs4_ol_stateid*) ;
 int nfs_ok ;
 int nfserr_openmode ;

__attribute__((used)) static
__be32 nfs4_check_openmode(struct nfs4_ol_stateid *stp, int flags)
{
        __be32 status = nfserr_openmode;


 if (stp->st_openstp)
  stp = stp->st_openstp;
 if ((flags & WR_STATE) && !access_permit_write(stp))
                goto out;
 if ((flags & RD_STATE) && !access_permit_read(stp))
                goto out;
 status = nfs_ok;
out:
 return status;
}
