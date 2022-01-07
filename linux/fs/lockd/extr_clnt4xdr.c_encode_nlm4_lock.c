
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct xdr_stream {int dummy; } ;
struct TYPE_2__ {int len; int data; } ;
struct nlm_lock {int svid; TYPE_1__ oh; int fh; int caller; } ;
typedef int __be32 ;


 int cpu_to_be32 (int ) ;
 int encode_caller_name (struct xdr_stream*,int ) ;
 int encode_fh (struct xdr_stream*,int *) ;
 int encode_netobj (struct xdr_stream*,int ,int ) ;
 int nlm4_compute_offsets (struct nlm_lock const*,int *,int *) ;
 int * xdr_encode_hyper (int *,int ) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static void encode_nlm4_lock(struct xdr_stream *xdr,
        const struct nlm_lock *lock)
{
 u64 l_offset, l_len;
 __be32 *p;

 encode_caller_name(xdr, lock->caller);
 encode_fh(xdr, &lock->fh);
 encode_netobj(xdr, lock->oh.data, lock->oh.len);

 p = xdr_reserve_space(xdr, 4 + 8 + 8);
 *p++ = cpu_to_be32(lock->svid);

 nlm4_compute_offsets(lock, &l_offset, &l_len);
 p = xdr_encode_hyper(p, l_offset);
 xdr_encode_hyper(p, l_len);
}
