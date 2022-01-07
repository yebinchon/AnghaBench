
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_buf {int dummy; } ;
typedef int obj ;
typedef int __be32 ;


 int cpu_to_be32 (int ) ;
 int write_bytes_to_xdr_buf (struct xdr_buf*,unsigned int,int *,int) ;

int
xdr_encode_word(struct xdr_buf *buf, unsigned int base, u32 obj)
{
 __be32 raw = cpu_to_be32(obj);

 return write_bytes_to_xdr_buf(buf, base, &raw, sizeof(obj));
}
