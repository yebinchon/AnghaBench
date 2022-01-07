
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ufs_sb_private_info {int s_fmask; int s_fshift; } ;
struct ufs_buffer_head {int fragment; int count; int ** bh; } ;
struct super_block {int dummy; } ;


 int GFP_NOFS ;
 int UFS_MAXFRAG ;
 int brelse (int *) ;
 int kfree (struct ufs_buffer_head*) ;
 struct ufs_buffer_head* kmalloc (int,int ) ;
 int * sb_bread (struct super_block*,int) ;

struct ufs_buffer_head * _ubh_bread_ (struct ufs_sb_private_info * uspi,
 struct super_block *sb, u64 fragment, u64 size)
{
 struct ufs_buffer_head * ubh;
 unsigned i, j ;
 u64 count = 0;
 if (size & ~uspi->s_fmask)
  return ((void*)0);
 count = size >> uspi->s_fshift;
 if (count > UFS_MAXFRAG)
  return ((void*)0);
 ubh = kmalloc (sizeof (struct ufs_buffer_head), GFP_NOFS);
 if (!ubh)
  return ((void*)0);
 ubh->fragment = fragment;
 ubh->count = count;
 for (i = 0; i < count; i++)
  if (!(ubh->bh[i] = sb_bread(sb, fragment + i)))
   goto failed;
 for (; i < UFS_MAXFRAG; i++)
  ubh->bh[i] = ((void*)0);
 return ubh;
failed:
 for (j = 0; j < i; j++)
  brelse (ubh->bh[j]);
 kfree(ubh);
 return ((void*)0);
}
