
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_diradd {int * bh; } ;


 int brelse (int *) ;

__attribute__((used)) static inline void gfs2_dir_no_add(struct gfs2_diradd *da)
{
 brelse(da->bh);
 da->bh = ((void*)0);
}
