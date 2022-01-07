
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int iflag; int fsflag; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* f2fs_fsflags_map ;

__attribute__((used)) static inline u32 f2fs_iflags_to_fsflags(u32 iflags)
{
 u32 fsflags = 0;
 int i;

 for (i = 0; i < ARRAY_SIZE(f2fs_fsflags_map); i++)
  if (iflags & f2fs_fsflags_map[i].iflag)
   fsflags |= f2fs_fsflags_map[i].fsflag;

 return fsflags;
}
