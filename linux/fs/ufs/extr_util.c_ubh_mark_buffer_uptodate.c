
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_buffer_head {unsigned int count; int * bh; } ;


 int clear_buffer_uptodate (int ) ;
 int set_buffer_uptodate (int ) ;

void ubh_mark_buffer_uptodate (struct ufs_buffer_head * ubh, int flag)
{
 unsigned i;
 if (!ubh)
  return;
 if (flag) {
  for ( i = 0; i < ubh->count; i++ )
   set_buffer_uptodate (ubh->bh[i]);
 } else {
  for ( i = 0; i < ubh->count; i++ )
   clear_buffer_uptodate (ubh->bh[i]);
 }
}
