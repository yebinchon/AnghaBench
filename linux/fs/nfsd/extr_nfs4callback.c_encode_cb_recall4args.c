
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct TYPE_4__ {TYPE_1__* sc_file; int sc_stateid; } ;
struct nfs4_delegation {TYPE_2__ dl_stid; } ;
struct nfs4_cb_compound_hdr {int nops; } ;
typedef int __be32 ;
struct TYPE_3__ {int fi_fhandle; } ;


 int OP_CB_RECALL ;
 int encode_nfs_cb_opnum4 (struct xdr_stream*,int ) ;
 int encode_nfs_fh4 (struct xdr_stream*,int *) ;
 int encode_stateid4 (struct xdr_stream*,int *) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;
 int xdr_zero ;

__attribute__((used)) static void encode_cb_recall4args(struct xdr_stream *xdr,
      const struct nfs4_delegation *dp,
      struct nfs4_cb_compound_hdr *hdr)
{
 __be32 *p;

 encode_nfs_cb_opnum4(xdr, OP_CB_RECALL);
 encode_stateid4(xdr, &dp->dl_stid.sc_stateid);

 p = xdr_reserve_space(xdr, 4);
 *p++ = xdr_zero;

 encode_nfs_fh4(xdr, &dp->dl_stid.sc_file->fi_fhandle);

 hdr->nops++;
}
