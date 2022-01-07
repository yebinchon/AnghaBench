
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdp_frame {int dummy; } ;
struct xdp_bulk_queue {int count; int flush_node; struct xdp_frame** q; struct bpf_cpu_map_entry* obj; } ;
struct ptr_ring {int producer_lock; } ;
struct bpf_cpu_map_entry {int cpu; int map_id; struct ptr_ring* queue; } ;


 int __list_del_clearprev (int *) ;
 int __ptr_ring_produce (struct ptr_ring*,struct xdp_frame*) ;
 scalar_t__ likely (int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_xdp_cpumap_enqueue (int ,unsigned int,unsigned int,int const) ;
 scalar_t__ unlikely (int) ;
 int xdp_return_frame (struct xdp_frame*) ;
 int xdp_return_frame_rx_napi (struct xdp_frame*) ;

__attribute__((used)) static int bq_flush_to_queue(struct xdp_bulk_queue *bq, bool in_napi_ctx)
{
 struct bpf_cpu_map_entry *rcpu = bq->obj;
 unsigned int processed = 0, drops = 0;
 const int to_cpu = rcpu->cpu;
 struct ptr_ring *q;
 int i;

 if (unlikely(!bq->count))
  return 0;

 q = rcpu->queue;
 spin_lock(&q->producer_lock);

 for (i = 0; i < bq->count; i++) {
  struct xdp_frame *xdpf = bq->q[i];
  int err;

  err = __ptr_ring_produce(q, xdpf);
  if (err) {
   drops++;
   if (likely(in_napi_ctx))
    xdp_return_frame_rx_napi(xdpf);
   else
    xdp_return_frame(xdpf);
  }
  processed++;
 }
 bq->count = 0;
 spin_unlock(&q->producer_lock);

 __list_del_clearprev(&bq->flush_node);


 trace_xdp_cpumap_enqueue(rcpu->map_id, processed, drops, to_cpu);
 return 0;
}
