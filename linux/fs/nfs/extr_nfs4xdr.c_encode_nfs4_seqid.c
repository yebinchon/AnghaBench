
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdr_stream {int dummy; } ;
struct nfs_seqid {TYPE_1__* sequence; } ;
struct TYPE_2__ {int counter; } ;


 int encode_uint32 (struct xdr_stream*,int ) ;

__attribute__((used)) static void encode_nfs4_seqid(struct xdr_stream *xdr,
  const struct nfs_seqid *seqid)
{
 if (seqid != ((void*)0))
  encode_uint32(xdr, seqid->sequence->counter);
 else
  encode_uint32(xdr, 0);
}
