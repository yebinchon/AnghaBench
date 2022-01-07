
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
typedef int fmode_t ;
typedef int __be32 ;


 int NFS4_OPEN_CLAIM_PREVIOUS ;
 int cpu_to_be32 (int ) ;
 int encode_delegation_type (struct xdr_stream*,int ) ;
 int * reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static inline void encode_claim_previous(struct xdr_stream *xdr, fmode_t type)
{
 __be32 *p;

 p = reserve_space(xdr, 4);
 *p = cpu_to_be32(NFS4_OPEN_CLAIM_PREVIOUS);
 encode_delegation_type(xdr, type);
}
