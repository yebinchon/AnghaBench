
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pnfs_layout_segment {int dummy; } ;
struct TYPE_2__ {int mirror_array_cnt; } ;


 TYPE_1__* FF_LAYOUT_LSEG (struct pnfs_layout_segment*) ;

__attribute__((used)) static inline u32
FF_LAYOUT_MIRROR_COUNT(struct pnfs_layout_segment *lseg)
{
 return FF_LAYOUT_LSEG(lseg)->mirror_array_cnt;
}
