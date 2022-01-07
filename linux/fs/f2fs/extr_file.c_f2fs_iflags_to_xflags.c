
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int iflag; int xflag; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* f2fs_xflags_map ;

__attribute__((used)) static inline u32 f2fs_iflags_to_xflags(u32 iflags)
{
 u32 xflags = 0;
 int i;

 for (i = 0; i < ARRAY_SIZE(f2fs_xflags_map); i++)
  if (iflags & f2fs_xflags_map[i].iflag)
   xflags |= f2fs_xflags_map[i].xflag;

 return xflags;
}
