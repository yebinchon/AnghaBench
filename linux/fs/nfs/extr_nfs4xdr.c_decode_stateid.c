
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
typedef int nfs4_stateid ;


 int NFS4_STATEID_SIZE ;
 int decode_opaque_fixed (struct xdr_stream*,int *,int ) ;

__attribute__((used)) static int decode_stateid(struct xdr_stream *xdr, nfs4_stateid *stateid)
{
 return decode_opaque_fixed(xdr, stateid, NFS4_STATEID_SIZE);
}
