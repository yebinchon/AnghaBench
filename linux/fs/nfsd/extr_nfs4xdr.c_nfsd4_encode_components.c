
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
typedef int __be32 ;


 int nfsd4_encode_components_esc (struct xdr_stream*,char,char*,int ,int ) ;

__attribute__((used)) static __be32 nfsd4_encode_components(struct xdr_stream *xdr, char sep,
          char *components)
{
 return nfsd4_encode_components_esc(xdr, sep, components, 0, 0);
}
