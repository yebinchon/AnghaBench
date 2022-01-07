
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_buffer_head {unsigned int count; int * bh; } ;


 unsigned int buffer_dirty (int ) ;

int ubh_buffer_dirty (struct ufs_buffer_head * ubh)
{
 unsigned i;
 unsigned result = 0;
 if (!ubh)
  return 0;
 for ( i = 0; i < ubh->count; i++ )
  result |= buffer_dirty(ubh->bh[i]);
 return result;
}
