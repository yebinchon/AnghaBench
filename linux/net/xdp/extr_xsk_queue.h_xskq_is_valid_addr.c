
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct xsk_queue {scalar_t__ size; int invalid_descs; } ;



__attribute__((used)) static inline bool xskq_is_valid_addr(struct xsk_queue *q, u64 addr)
{
 if (addr >= q->size) {
  q->invalid_descs++;
  return 0;
 }

 return 1;
}
