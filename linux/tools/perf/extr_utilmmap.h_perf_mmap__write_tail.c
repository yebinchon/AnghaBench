
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int base; } ;
struct mmap {TYPE_1__ core; } ;


 int ring_buffer_write_tail (int ,int ) ;

__attribute__((used)) static inline void perf_mmap__write_tail(struct mmap *md, u64 tail)
{
 ring_buffer_write_tail(md->core.base, tail);
}
