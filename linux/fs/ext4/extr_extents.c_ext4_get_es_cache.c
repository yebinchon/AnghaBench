
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct fiemap_extent_info {int dummy; } ;
typedef int __u64 ;
struct TYPE_2__ {int xattr_sem; } ;


 TYPE_1__* EXT4_I (struct inode*) ;
 int _ext4_fiemap (struct inode*,struct fiemap_extent_info*,int ,int ,int ) ;
 int down_read (int *) ;
 int ext4_fill_es_cache_info ;
 int ext4_has_inline_data (struct inode*) ;
 int up_read (int *) ;

int ext4_get_es_cache(struct inode *inode, struct fiemap_extent_info *fieinfo,
        __u64 start, __u64 len)
{
 if (ext4_has_inline_data(inode)) {
  int has_inline;

  down_read(&EXT4_I(inode)->xattr_sem);
  has_inline = ext4_has_inline_data(inode);
  up_read(&EXT4_I(inode)->xattr_sem);
  if (has_inline)
   return 0;
 }

 return _ext4_fiemap(inode, fieinfo, start, len,
       ext4_fill_es_cache_info);
}
