
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * ent32_p; } ;
struct fat_entry {int nr_bhs; int * fat_inode; int ** bhs; TYPE_1__ u; } ;


 int brelse (int *) ;

__attribute__((used)) static inline void fatent_brelse(struct fat_entry *fatent)
{
 int i;
 fatent->u.ent32_p = ((void*)0);
 for (i = 0; i < fatent->nr_bhs; i++)
  brelse(fatent->bhs[i]);
 fatent->nr_bhs = 0;
 fatent->bhs[0] = fatent->bhs[1] = ((void*)0);
 fatent->fat_inode = ((void*)0);
}
