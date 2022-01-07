
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_buffer_head {unsigned int count; scalar_t__* bh; } ;


 int bforget (scalar_t__) ;

void ubh_bforget (struct ufs_buffer_head * ubh)
{
 unsigned i;
 if (!ubh)
  return;
 for ( i = 0; i < ubh->count; i++ ) if ( ubh->bh[i] )
  bforget (ubh->bh[i]);
}
