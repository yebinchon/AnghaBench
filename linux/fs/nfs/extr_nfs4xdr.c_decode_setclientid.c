
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct xdr_stream {int dummy; } ;
struct TYPE_2__ {int data; } ;
struct nfs4_setclientid_res {TYPE_1__ confirm; int clientid; } ;
typedef scalar_t__ int32_t ;
typedef int __be32 ;


 int EIO ;
 int NFS4_VERIFIER_SIZE ;
 scalar_t__ NFSERR_CLID_INUSE ;
 scalar_t__ NFS_OK ;
 scalar_t__ OP_SETCLIENTID ;
 scalar_t__ be32_to_cpup (int *) ;
 int dprintk (char*,scalar_t__) ;
 int memcpy (int ,int *,int) ;
 int nfs4_stat_to_errno (scalar_t__) ;
 scalar_t__ unlikely (int) ;
 int * xdr_decode_hyper (int *,int *) ;
 int * xdr_inline_decode (struct xdr_stream*,scalar_t__) ;

__attribute__((used)) static int decode_setclientid(struct xdr_stream *xdr, struct nfs4_setclientid_res *res)
{
 __be32 *p;
 uint32_t opnum;
 int32_t nfserr;

 p = xdr_inline_decode(xdr, 8);
 if (unlikely(!p))
  return -EIO;
 opnum = be32_to_cpup(p++);
 if (opnum != OP_SETCLIENTID) {
  dprintk("nfs: decode_setclientid: Server returned operation"
   " %d\n", opnum);
  return -EIO;
 }
 nfserr = be32_to_cpup(p);
 if (nfserr == NFS_OK) {
  p = xdr_inline_decode(xdr, 8 + NFS4_VERIFIER_SIZE);
  if (unlikely(!p))
   return -EIO;
  p = xdr_decode_hyper(p, &res->clientid);
  memcpy(res->confirm.data, p, NFS4_VERIFIER_SIZE);
 } else if (nfserr == NFSERR_CLID_INUSE) {
  uint32_t len;


  p = xdr_inline_decode(xdr, 4);
  if (unlikely(!p))
   return -EIO;
  len = be32_to_cpup(p);
  p = xdr_inline_decode(xdr, len);
  if (unlikely(!p))
   return -EIO;


  p = xdr_inline_decode(xdr, 4);
  if (unlikely(!p))
   return -EIO;
  len = be32_to_cpup(p);
  p = xdr_inline_decode(xdr, len);
  if (unlikely(!p))
   return -EIO;
  return -NFSERR_CLID_INUSE;
 } else
  return nfs4_stat_to_errno(nfserr);

 return 0;
}
