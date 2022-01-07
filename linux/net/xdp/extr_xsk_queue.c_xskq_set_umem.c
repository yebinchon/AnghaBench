
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct xsk_queue {void* chunk_mask; void* size; } ;



void xskq_set_umem(struct xsk_queue *q, u64 size, u64 chunk_mask)
{
 if (!q)
  return;

 q->size = size;
 q->chunk_mask = chunk_mask;
}
