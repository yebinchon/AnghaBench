
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct TYPE_3__ {int data; } ;
typedef TYPE_1__ nfs4_stateid ;
typedef int __be32 ;


 int NFS4ERR_RESOURCE ;
 int NFS4_STATEID_SIZE ;
 int htonl (int ) ;
 int memcpy (int ,int *,int ) ;
 scalar_t__ unlikely (int ) ;
 int * xdr_inline_decode (struct xdr_stream*,int ) ;

__attribute__((used)) static __be32 decode_stateid(struct xdr_stream *xdr, nfs4_stateid *stateid)
{
 __be32 *p;

 p = xdr_inline_decode(xdr, NFS4_STATEID_SIZE);
 if (unlikely(p == ((void*)0)))
  return htonl(NFS4ERR_RESOURCE);
 memcpy(stateid->data, p, NFS4_STATEID_SIZE);
 return 0;
}
