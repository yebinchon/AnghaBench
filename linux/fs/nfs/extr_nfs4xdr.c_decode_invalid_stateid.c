
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
typedef int nfs4_stateid ;


 int decode_stateid (struct xdr_stream*,int *) ;
 int invalid_stateid ;
 int nfs4_stateid_copy (int *,int *) ;

__attribute__((used)) static int decode_invalid_stateid(struct xdr_stream *xdr, nfs4_stateid *stateid)
{
 nfs4_stateid dummy;

 nfs4_stateid_copy(stateid, &invalid_stateid);
 return decode_stateid(xdr, &dummy);
}
