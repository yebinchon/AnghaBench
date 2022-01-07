
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be32 ;


 int NFS3_COOKIEVERFSIZE ;
 int XDR_QUADLEN (int ) ;
 int memcpy (int *,int const*,int ) ;

__attribute__((used)) static __be32 *xdr_encode_cookieverf3(__be32 *p, const __be32 *verifier)
{
 memcpy(p, verifier, NFS3_COOKIEVERFSIZE);
 return p + XDR_QUADLEN(NFS3_COOKIEVERFSIZE);
}
