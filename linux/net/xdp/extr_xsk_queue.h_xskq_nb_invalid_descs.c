
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct xsk_queue {int invalid_descs; } ;



__attribute__((used)) static inline u64 xskq_nb_invalid_descs(struct xsk_queue *q)
{
 return q ? q->invalid_descs : 0;
}
