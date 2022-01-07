
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct dl_bw {int total_bw; } ;
typedef int s32 ;


 int __dl_update (struct dl_bw*,int) ;

__attribute__((used)) static inline
void __dl_sub(struct dl_bw *dl_b, u64 tsk_bw, int cpus)
{
 dl_b->total_bw -= tsk_bw;
 __dl_update(dl_b, (s32)tsk_bw / cpus);
}
