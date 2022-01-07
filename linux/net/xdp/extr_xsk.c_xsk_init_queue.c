
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xsk_queue {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int WRITE_ONCE (struct xsk_queue*,struct xsk_queue*) ;
 int is_power_of_2 (scalar_t__) ;
 int smp_wmb () ;
 struct xsk_queue* xskq_create (scalar_t__,int) ;

__attribute__((used)) static int xsk_init_queue(u32 entries, struct xsk_queue **queue,
     bool umem_queue)
{
 struct xsk_queue *q;

 if (entries == 0 || *queue || !is_power_of_2(entries))
  return -EINVAL;

 q = xskq_create(entries, umem_queue);
 if (!q)
  return -ENOMEM;


 smp_wmb();
 WRITE_ONCE(*queue, q);
 return 0;
}
