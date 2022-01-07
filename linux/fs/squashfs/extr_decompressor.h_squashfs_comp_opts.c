
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct squashfs_sb_info {TYPE_1__* decompressor; } ;
struct TYPE_2__ {void* (* comp_opts ) (struct squashfs_sb_info*,void*,int) ;} ;


 void* stub1 (struct squashfs_sb_info*,void*,int) ;

__attribute__((used)) static inline void *squashfs_comp_opts(struct squashfs_sb_info *msblk,
       void *buff, int length)
{
 return msblk->decompressor->comp_opts ?
  msblk->decompressor->comp_opts(msblk, buff, length) : ((void*)0);
}
