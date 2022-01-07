
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dx_root_info {unsigned int indirect_levels; } ;
struct dx_root {struct dx_root_info info; } ;
struct dx_frame {TYPE_1__* bh; } ;
struct TYPE_2__ {scalar_t__ b_data; } ;


 int brelse (TYPE_1__*) ;

__attribute__((used)) static void dx_release(struct dx_frame *frames)
{
 struct dx_root_info *info;
 int i;
 unsigned int indirect_levels;

 if (frames[0].bh == ((void*)0))
  return;

 info = &((struct dx_root *)frames[0].bh->b_data)->info;

 indirect_levels = info->indirect_levels;
 for (i = 0; i <= indirect_levels; i++) {
  if (frames[i].bh == ((void*)0))
   break;
  brelse(frames[i].bh);
  frames[i].bh = ((void*)0);
 }
}
