
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_stream {int dummy; } ;
typedef int __be32 ;


 int NFS3_MAXNAMLEN ;
 int WARN_ON_ONCE (int) ;
 int xdr_encode_opaque (int *,char const*,int ) ;
 int * xdr_reserve_space (struct xdr_stream*,int ) ;

__attribute__((used)) static void encode_filename3(struct xdr_stream *xdr,
        const char *name, u32 length)
{
 __be32 *p;

 WARN_ON_ONCE(length > NFS3_MAXNAMLEN);
 p = xdr_reserve_space(xdr, 4 + length);
 xdr_encode_opaque(p, name, length);
}
