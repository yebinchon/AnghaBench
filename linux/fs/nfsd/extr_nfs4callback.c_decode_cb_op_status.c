
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_stream {int dummy; } ;
typedef enum nfs_cb_opnum4 { ____Placeholder_nfs_cb_opnum4 } nfs_cb_opnum4 ;
typedef int __be32 ;


 int EIO ;
 int be32_to_cpup (int *) ;
 int dprintk (char*,int,int) ;
 int nfs_cb_stat_to_errno (int) ;
 scalar_t__ unlikely (int) ;
 int * xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static int decode_cb_op_status(struct xdr_stream *xdr,
          enum nfs_cb_opnum4 expected, int *status)
{
 __be32 *p;
 u32 op;

 p = xdr_inline_decode(xdr, 4 + 4);
 if (unlikely(p == ((void*)0)))
  goto out_overflow;
 op = be32_to_cpup(p++);
 if (unlikely(op != expected))
  goto out_unexpected;
 *status = nfs_cb_stat_to_errno(be32_to_cpup(p));
 return 0;
out_overflow:
 return -EIO;
out_unexpected:
 dprintk("NFSD: Callback server returned operation %d but "
  "we issued a request for %d\n", op, expected);
 return -EIO;
}
