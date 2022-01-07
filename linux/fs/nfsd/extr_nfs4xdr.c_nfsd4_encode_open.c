
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdr_stream {int dummy; } ;
struct nfsd4_open {int op_rflags; int op_delegate_type; int op_recall; int op_why_no_deleg; int op_delegate_stateid; int * op_bmval; int op_cinfo; int op_stateid; } ;
struct nfsd4_compoundres {struct xdr_stream xdr; } ;
typedef int __be32 ;


 int BUG () ;
 int NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE ;
 int NFS4_LIMIT_SIZE ;






 void* cpu_to_be32 (int) ;
 int * encode_cinfo (int *,int *) ;
 int nfsd4_encode_bitmap (struct xdr_stream*,int ,int ,int ) ;
 int nfsd4_encode_stateid (struct xdr_stream*,int *) ;
 int nfserr_resource ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static __be32
nfsd4_encode_open(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_open *open)
{
 struct xdr_stream *xdr = &resp->xdr;
 __be32 *p;

 nfserr = nfsd4_encode_stateid(xdr, &open->op_stateid);
 if (nfserr)
  return nfserr;
 p = xdr_reserve_space(xdr, 24);
 if (!p)
  return nfserr_resource;
 p = encode_cinfo(p, &open->op_cinfo);
 *p++ = cpu_to_be32(open->op_rflags);

 nfserr = nfsd4_encode_bitmap(xdr, open->op_bmval[0], open->op_bmval[1],
     open->op_bmval[2]);
 if (nfserr)
  return nfserr;

 p = xdr_reserve_space(xdr, 4);
 if (!p)
  return nfserr_resource;

 *p++ = cpu_to_be32(open->op_delegate_type);
 switch (open->op_delegate_type) {
 case 133:
  break;
 case 131:
  nfserr = nfsd4_encode_stateid(xdr, &open->op_delegate_stateid);
  if (nfserr)
   return nfserr;
  p = xdr_reserve_space(xdr, 20);
  if (!p)
   return nfserr_resource;
  *p++ = cpu_to_be32(open->op_recall);




  *p++ = cpu_to_be32(NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE);
  *p++ = cpu_to_be32(0);
  *p++ = cpu_to_be32(0);
  *p++ = cpu_to_be32(0);
  break;
 case 130:
  nfserr = nfsd4_encode_stateid(xdr, &open->op_delegate_stateid);
  if (nfserr)
   return nfserr;
  p = xdr_reserve_space(xdr, 32);
  if (!p)
   return nfserr_resource;
  *p++ = cpu_to_be32(0);




  *p++ = cpu_to_be32(NFS4_LIMIT_SIZE);
  *p++ = cpu_to_be32(~(u32)0);
  *p++ = cpu_to_be32(~(u32)0);




  *p++ = cpu_to_be32(NFS4_ACE_ACCESS_ALLOWED_ACE_TYPE);
  *p++ = cpu_to_be32(0);
  *p++ = cpu_to_be32(0);
  *p++ = cpu_to_be32(0);
  break;
 case 132:
  switch (open->op_why_no_deleg) {
  case 129:
  case 128:
   p = xdr_reserve_space(xdr, 8);
   if (!p)
    return nfserr_resource;
   *p++ = cpu_to_be32(open->op_why_no_deleg);

   *p++ = cpu_to_be32(0);
   break;
  default:
   p = xdr_reserve_space(xdr, 4);
   if (!p)
    return nfserr_resource;
   *p++ = cpu_to_be32(open->op_why_no_deleg);
  }
  break;
 default:
  BUG();
 }

 return 0;
}
