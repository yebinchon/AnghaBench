
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_stream {int dummy; } ;
typedef void* __be32 ;


 void* cpu_to_be32 (int ) ;
 void** reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static void encode_share_access(struct xdr_stream *xdr, u32 share_access)
{
 __be32 *p;

 p = reserve_space(xdr, 8);
 *p++ = cpu_to_be32(share_access);
 *p = cpu_to_be32(0);
}
