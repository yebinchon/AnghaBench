
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void uint8_t ;
struct TYPE_4__ {int tp_frame_size; } ;
struct ring {int version; TYPE_2__ req3; TYPE_1__* rd; } ;
struct TYPE_3__ {void* iov_base; } ;





 int bug_on (int) ;

__attribute__((used)) static inline void *get_next_frame(struct ring *ring, int n)
{
 uint8_t *f0 = ring->rd[0].iov_base;

 switch (ring->version) {
 case 130:
 case 129:
  return ring->rd[n].iov_base;
 case 128:
  return f0 + (n * ring->req3.tp_frame_size);
 default:
  bug_on(1);
 }
}
