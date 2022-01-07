
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct nfsd4_session {int se_cb_seq_nr; } ;
struct nfsd4_callback {TYPE_1__* cb_clp; } ;
struct nfs4_cb_compound_hdr {scalar_t__ minorversion; int nops; } ;
typedef int __be32 ;
struct TYPE_2__ {struct nfsd4_session* cl_cb_session; } ;


 int OP_CB_SEQUENCE ;
 int cpu_to_be32 (int ) ;
 int encode_nfs_cb_opnum4 (struct xdr_stream*,int ) ;
 int encode_sessionid4 (struct xdr_stream*,struct nfsd4_session*) ;
 int xdr_encode_empty_array (int *) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;
 void* xdr_zero ;

__attribute__((used)) static void encode_cb_sequence4args(struct xdr_stream *xdr,
        const struct nfsd4_callback *cb,
        struct nfs4_cb_compound_hdr *hdr)
{
 struct nfsd4_session *session = cb->cb_clp->cl_cb_session;
 __be32 *p;

 if (hdr->minorversion == 0)
  return;

 encode_nfs_cb_opnum4(xdr, OP_CB_SEQUENCE);
 encode_sessionid4(xdr, session);

 p = xdr_reserve_space(xdr, 4 + 4 + 4 + 4 + 4);
 *p++ = cpu_to_be32(session->se_cb_seq_nr);
 *p++ = xdr_zero;
 *p++ = xdr_zero;
 *p++ = xdr_zero;
 xdr_encode_empty_array(p);

 hdr->nops++;
}
