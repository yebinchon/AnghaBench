
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xdr_stream {int dummy; } ;
typedef void* int32_t ;
typedef enum nfs_opnum4 { ____Placeholder_nfs_opnum4 } nfs_opnum4 ;
typedef scalar_t__ __be32 ;


 int EIO ;
 int EREMOTEIO ;
 int NFS_OK ;
 void* be32_to_cpup (scalar_t__*) ;
 scalar_t__ cpu_to_be32 (int ) ;
 int dprintk (char*,int,int) ;
 int nfs4_stat_to_errno (void*) ;
 int trace_nfs4_xdr_status (struct xdr_stream*,int,void*) ;
 scalar_t__ unlikely (int) ;
 scalar_t__* xdr_inline_decode (struct xdr_stream*,int) ;

__attribute__((used)) static bool __decode_op_hdr(struct xdr_stream *xdr, enum nfs_opnum4 expected,
  int *nfs_retval)
{
 __be32 *p;
 uint32_t opnum;
 int32_t nfserr;

 p = xdr_inline_decode(xdr, 8);
 if (unlikely(!p))
  goto out_overflow;
 opnum = be32_to_cpup(p++);
 if (unlikely(opnum != expected))
  goto out_bad_operation;
 if (unlikely(*p != cpu_to_be32(NFS_OK)))
  goto out_status;
 *nfs_retval = 0;
 return 1;
out_status:
 nfserr = be32_to_cpup(p);
 trace_nfs4_xdr_status(xdr, opnum, nfserr);
 *nfs_retval = nfs4_stat_to_errno(nfserr);
 return 1;
out_bad_operation:
 dprintk("nfs: Server returned operation"
  " %d but we issued a request for %d\n",
   opnum, expected);
 *nfs_retval = -EREMOTEIO;
 return 0;
out_overflow:
 *nfs_retval = -EIO;
 return 0;
}
