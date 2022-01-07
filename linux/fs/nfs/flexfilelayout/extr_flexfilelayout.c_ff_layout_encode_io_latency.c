
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_stream {int dummy; } ;
struct nfs4_ff_io_stat {int aggregate_completion_time; int total_busy_time; int bytes_not_delivered; int bytes_completed; int ops_completed; int bytes_requested; int ops_requested; } ;
typedef int __be32 ;


 int ff_layout_encode_nfstime (struct xdr_stream*,int ) ;
 int * xdr_encode_hyper (int *,int ) ;
 int * xdr_reserve_space (struct xdr_stream*,int) ;

__attribute__((used)) static void
ff_layout_encode_io_latency(struct xdr_stream *xdr,
       struct nfs4_ff_io_stat *stat)
{
 __be32 *p;

 p = xdr_reserve_space(xdr, 5 * 8);
 p = xdr_encode_hyper(p, stat->ops_requested);
 p = xdr_encode_hyper(p, stat->bytes_requested);
 p = xdr_encode_hyper(p, stat->ops_completed);
 p = xdr_encode_hyper(p, stat->bytes_completed);
 p = xdr_encode_hyper(p, stat->bytes_not_delivered);
 ff_layout_encode_nfstime(xdr, stat->total_busy_time);
 ff_layout_encode_nfstime(xdr, stat->aggregate_completion_time);
}
