
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfsd4_fs_location {int path; int hosts; } ;
typedef scalar_t__ __be32 ;


 scalar_t__ nfsd4_encode_components (struct xdr_stream*,char,int ) ;
 scalar_t__ nfsd4_encode_components_esc (struct xdr_stream*,char,int ,char,char) ;

__attribute__((used)) static __be32 nfsd4_encode_fs_location4(struct xdr_stream *xdr,
     struct nfsd4_fs_location *location)
{
 __be32 status;

 status = nfsd4_encode_components_esc(xdr, ':', location->hosts,
      '[', ']');
 if (status)
  return status;
 status = nfsd4_encode_components(xdr, '/', location->path);
 if (status)
  return status;
 return 0;
}
