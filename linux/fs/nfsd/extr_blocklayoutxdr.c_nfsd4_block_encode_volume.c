
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct TYPE_4__ {int code_set; int designator_type; int pr_key; int designator_len; int designator; } ;
struct TYPE_3__ {int sig_len; int sig; int offset; } ;
struct pnfs_block_volume {int type; TYPE_2__ scsi; TYPE_1__ simple; } ;
typedef int __be32 ;


 int ENOTSUPP ;
 int ETOOSMALL ;


 int XDR_QUADLEN (int ) ;
 void* cpu_to_be32 (int) ;
 int * xdr_encode_hyper (int *,int ) ;
 int * xdr_encode_opaque (int *,int ,int ) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static int
nfsd4_block_encode_volume(struct xdr_stream *xdr, struct pnfs_block_volume *b)
{
 __be32 *p;
 int len;

 switch (b->type) {
 case 128:
  len = 4 + 4 + 8 + 4 + (XDR_QUADLEN(b->simple.sig_len) << 2);
  p = xdr_reserve_space(xdr, len);
  if (!p)
   return -ETOOSMALL;

  *p++ = cpu_to_be32(b->type);
  *p++ = cpu_to_be32(1);
  p = xdr_encode_hyper(p, b->simple.offset);
  p = xdr_encode_opaque(p, b->simple.sig, b->simple.sig_len);
  break;
 case 129:
  len = 4 + 4 + 4 + 4 + (XDR_QUADLEN(b->scsi.designator_len) << 2) + 8;
  p = xdr_reserve_space(xdr, len);
  if (!p)
   return -ETOOSMALL;

  *p++ = cpu_to_be32(b->type);
  *p++ = cpu_to_be32(b->scsi.code_set);
  *p++ = cpu_to_be32(b->scsi.designator_type);
  p = xdr_encode_opaque(p, b->scsi.designator, b->scsi.designator_len);
  p = xdr_encode_hyper(p, b->scsi.pr_key);
  break;
 default:
  return -ENOTSUPP;
 }

 return len;
}
