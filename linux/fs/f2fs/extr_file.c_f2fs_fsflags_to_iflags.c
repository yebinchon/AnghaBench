
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int fsflag; int iflag; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* f2fs_fsflags_map ;

__attribute__((used)) static inline u32 f2fs_fsflags_to_iflags(u32 fsflags)
{
 u32 iflags = 0;
 int i;

 for (i = 0; i < ARRAY_SIZE(f2fs_fsflags_map); i++)
  if (fsflags & f2fs_fsflags_map[i].fsflag)
   iflags |= f2fs_fsflags_map[i].iflag;

 return iflags;
}
