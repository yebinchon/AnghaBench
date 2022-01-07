
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
typedef int nfs4_stateid ;


 int NFS4_STATEID_SIZE ;
 int encode_opaque_fixed (struct xdr_stream*,int const*,int ) ;

__attribute__((used)) static void encode_nfs4_stateid(struct xdr_stream *xdr, const nfs4_stateid *stateid)
{
 encode_opaque_fixed(xdr, stateid, NFS4_STATEID_SIZE);
}
