
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct svc_fh {int dummy; } ;
struct nfsd3_readdirres {int rqstp; struct svc_fh scratch; } ;
typedef scalar_t__ __be32 ;


 int NFS3_FHSIZE ;
 scalar_t__ compose_entry_fh (struct nfsd3_readdirres*,struct svc_fh*,char const*,int,int ) ;
 scalar_t__* encode_fh (scalar_t__*,struct svc_fh*) ;
 scalar_t__* encode_post_op_attr (int ,scalar_t__*,struct svc_fh*) ;
 int fh_init (struct svc_fh*,int ) ;
 int fh_put (struct svc_fh*) ;
 scalar_t__ xdr_one ;

__attribute__((used)) static __be32 *encode_entryplus_baggage(struct nfsd3_readdirres *cd, __be32 *p, const char *name, int namlen, u64 ino)
{
 struct svc_fh *fh = &cd->scratch;
 __be32 err;

 fh_init(fh, NFS3_FHSIZE);
 err = compose_entry_fh(cd, fh, name, namlen, ino);
 if (err) {
  *p++ = 0;
  *p++ = 0;
  goto out;
 }
 p = encode_post_op_attr(cd->rqstp, p, fh);
 *p++ = xdr_one;
 p = encode_fh(p, fh);
out:
 fh_put(fh);
 return p;
}
