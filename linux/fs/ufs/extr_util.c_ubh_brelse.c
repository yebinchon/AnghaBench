
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_buffer_head {unsigned int count; int * bh; } ;


 int brelse (int ) ;
 int kfree (struct ufs_buffer_head*) ;

void ubh_brelse (struct ufs_buffer_head * ubh)
{
 unsigned i;
 if (!ubh)
  return;
 for (i = 0; i < ubh->count; i++)
  brelse (ubh->bh[i]);
 kfree (ubh);
}
