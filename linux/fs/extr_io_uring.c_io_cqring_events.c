
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int head; int tail; } ;
struct io_rings {TYPE_1__ cq; } ;


 int READ_ONCE (int ) ;
 int smp_rmb () ;

__attribute__((used)) static unsigned io_cqring_events(struct io_rings *rings)
{

 smp_rmb();
 return READ_ONCE(rings->cq.tail) - READ_ONCE(rings->cq.head);
}
