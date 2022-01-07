
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mic_vring {TYPE_1__* info; } ;
typedef int __u16 ;
struct TYPE_2__ {int avail_idx; } ;


 int READ_ONCE (int ) ;

__attribute__((used)) static inline __u16 read_avail_idx(struct mic_vring *vr)
{
 return READ_ONCE(vr->info->avail_idx);
}
