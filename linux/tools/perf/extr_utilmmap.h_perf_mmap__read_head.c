
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int base; } ;
struct mmap {TYPE_1__ core; } ;


 int ring_buffer_read_head (int ) ;

__attribute__((used)) static inline u64 perf_mmap__read_head(struct mmap *mm)
{
 return ring_buffer_read_head(mm->core.base);
}
