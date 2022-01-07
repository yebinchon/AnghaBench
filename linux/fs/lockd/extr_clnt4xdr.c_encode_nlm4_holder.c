
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct xdr_stream {int dummy; } ;
struct TYPE_3__ {int len; int data; } ;
struct TYPE_4__ {scalar_t__ fl_type; } ;
struct nlm_lock {TYPE_1__ oh; int svid; TYPE_2__ fl; } ;
struct nlm_res {struct nlm_lock lock; } ;
typedef int __be32 ;


 scalar_t__ F_RDLCK ;
 int encode_bool (struct xdr_stream*,int) ;
 int encode_int32 (struct xdr_stream*,int ) ;
 int encode_netobj (struct xdr_stream*,int ,int ) ;
 int nlm4_compute_offsets (struct nlm_lock const*,int *,int *) ;
 int * xdr_encode_hyper (int *,int ) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static void encode_nlm4_holder(struct xdr_stream *xdr,
          const struct nlm_res *result)
{
 const struct nlm_lock *lock = &result->lock;
 u64 l_offset, l_len;
 __be32 *p;

 encode_bool(xdr, lock->fl.fl_type == F_RDLCK);
 encode_int32(xdr, lock->svid);
 encode_netobj(xdr, lock->oh.data, lock->oh.len);

 p = xdr_reserve_space(xdr, 4 + 4);
 nlm4_compute_offsets(lock, &l_offset, &l_len);
 p = xdr_encode_hyper(p, l_offset);
 xdr_encode_hyper(p, l_len);
}
