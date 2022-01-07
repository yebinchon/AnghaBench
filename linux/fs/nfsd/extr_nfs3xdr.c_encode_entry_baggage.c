
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct nfsd3_readdirres {int * offset; } ;
typedef int __be32 ;


 int NFS_OFFSET_MAX ;
 int * xdr_encode_array (int *,char const*,int) ;
 int * xdr_encode_hyper (int *,int ) ;
 int xdr_one ;

__attribute__((used)) static __be32 *
encode_entry_baggage(struct nfsd3_readdirres *cd, __be32 *p, const char *name,
      int namlen, u64 ino)
{
 *p++ = xdr_one;
 p = xdr_encode_hyper(p, ino);
 p = xdr_encode_array(p, name, namlen);

 cd->offset = p;
 p = xdr_encode_hyper(p, NFS_OFFSET_MAX);

 return p;
}
