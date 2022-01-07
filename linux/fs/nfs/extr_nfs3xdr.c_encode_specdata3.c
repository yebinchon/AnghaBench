
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
typedef int dev_t ;
typedef void* __be32 ;


 int MAJOR (int const) ;
 int MINOR (int const) ;
 void* cpu_to_be32 (int ) ;
 void** xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static void encode_specdata3(struct xdr_stream *xdr, const dev_t rdev)
{
 __be32 *p;

 p = xdr_reserve_space(xdr, 8);
 *p++ = cpu_to_be32(MAJOR(rdev));
 *p = cpu_to_be32(MINOR(rdev));
}
