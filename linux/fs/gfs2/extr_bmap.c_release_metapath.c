
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct metapath {int ** mp_bh; } ;


 int GFS2_MAX_META_HEIGHT ;
 int brelse (int *) ;

__attribute__((used)) static void release_metapath(struct metapath *mp)
{
 int i;

 for (i = 0; i < GFS2_MAX_META_HEIGHT; i++) {
  if (mp->mp_bh[i] == ((void*)0))
   break;
  brelse(mp->mp_bh[i]);
  mp->mp_bh[i] = ((void*)0);
 }
}
