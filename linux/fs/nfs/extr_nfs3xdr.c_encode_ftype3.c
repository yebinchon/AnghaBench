
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_stream {int dummy; } ;


 int encode_uint32 (struct xdr_stream*,int const) ;

__attribute__((used)) static void encode_ftype3(struct xdr_stream *xdr, const u32 type)
{
 encode_uint32(xdr, type);
}
