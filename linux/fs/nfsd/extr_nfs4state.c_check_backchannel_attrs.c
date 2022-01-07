
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_channel_attrs {scalar_t__ maxreq_sz; scalar_t__ maxresp_sz; int maxops; scalar_t__ maxresp_cached; scalar_t__ headerpadsz; } ;
typedef int __be32 ;


 scalar_t__ NFSD_CB_MAX_REQ_SZ ;
 scalar_t__ NFSD_CB_MAX_RESP_SZ ;
 int nfs_ok ;
 int nfserr_toosmall ;

__attribute__((used)) static __be32 check_backchannel_attrs(struct nfsd4_channel_attrs *ca)
{
 ca->headerpadsz = 0;

 if (ca->maxreq_sz < NFSD_CB_MAX_REQ_SZ)
  return nfserr_toosmall;
 if (ca->maxresp_sz < NFSD_CB_MAX_RESP_SZ)
  return nfserr_toosmall;
 ca->maxresp_cached = 0;
 if (ca->maxops < 2)
  return nfserr_toosmall;

 return nfs_ok;
}
