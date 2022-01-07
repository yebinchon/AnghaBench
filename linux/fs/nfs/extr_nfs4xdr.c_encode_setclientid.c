
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct nfs4_setclientid {TYPE_1__* sc_clnt; int sc_uaddr; int sc_uaddr_len; int sc_netid; int sc_netid_len; int sc_prog; int sc_verifier; } ;
struct compound_hdr {int dummy; } ;
typedef int __be32 ;
struct TYPE_2__ {int cl_cb_ident; int cl_owner_id; } ;


 int OP_SETCLIENTID ;
 int cpu_to_be32 (int ) ;
 int decode_setclientid_maxsz ;
 int encode_nfs4_verifier (struct xdr_stream*,int ) ;
 int encode_op_hdr (struct xdr_stream*,int ,int ,struct compound_hdr*) ;
 int encode_string (struct xdr_stream*,int ,int ) ;
 int * reserve_space (struct xdr_stream*,int) ;
 int strlen (int ) ;

__attribute__((used)) static void encode_setclientid(struct xdr_stream *xdr, const struct nfs4_setclientid *setclientid, struct compound_hdr *hdr)
{
 __be32 *p;

 encode_op_hdr(xdr, OP_SETCLIENTID, decode_setclientid_maxsz, hdr);
 encode_nfs4_verifier(xdr, setclientid->sc_verifier);

 encode_string(xdr, strlen(setclientid->sc_clnt->cl_owner_id),
   setclientid->sc_clnt->cl_owner_id);
 p = reserve_space(xdr, 4);
 *p = cpu_to_be32(setclientid->sc_prog);
 encode_string(xdr, setclientid->sc_netid_len, setclientid->sc_netid);
 encode_string(xdr, setclientid->sc_uaddr_len, setclientid->sc_uaddr);
 p = reserve_space(xdr, 4);
 *p = cpu_to_be32(setclientid->sc_clnt->cl_cb_ident);
}
