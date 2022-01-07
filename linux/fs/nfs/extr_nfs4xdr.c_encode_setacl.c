
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs_setaclargs {int acl_len; int acl_pages; } ;
struct compound_hdr {int dummy; } ;
typedef void* __be32 ;


 int FATTR4_WORD0_ACL ;
 int OP_SETATTR ;
 void* cpu_to_be32 (int) ;
 int decode_setacl_maxsz ;
 int encode_nfs4_stateid (struct xdr_stream*,int *) ;
 int encode_op_hdr (struct xdr_stream*,int ,int ,struct compound_hdr*) ;
 void** reserve_space (struct xdr_stream*,int) ;
 int xdr_write_pages (struct xdr_stream*,int ,int ,int) ;
 int zero_stateid ;

__attribute__((used)) static void
encode_setacl(struct xdr_stream *xdr, const struct nfs_setaclargs *arg,
  struct compound_hdr *hdr)
{
 __be32 *p;

 encode_op_hdr(xdr, OP_SETATTR, decode_setacl_maxsz, hdr);
 encode_nfs4_stateid(xdr, &zero_stateid);
 p = reserve_space(xdr, 2*4);
 *p++ = cpu_to_be32(1);
 *p = cpu_to_be32(FATTR4_WORD0_ACL);
 p = reserve_space(xdr, 4);
 *p = cpu_to_be32(arg->acl_len);
 xdr_write_pages(xdr, arg->acl_pages, 0, arg->acl_len);
}
