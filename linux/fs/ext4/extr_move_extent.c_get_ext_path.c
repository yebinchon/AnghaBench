
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct ext4_ext_path {int * p_ext; } ;
typedef int ext4_lblk_t ;


 int ENODATA ;
 int EXT4_EX_NOCACHE ;
 scalar_t__ IS_ERR (struct ext4_ext_path*) ;
 int PTR_ERR (struct ext4_ext_path*) ;
 int ext4_ext_drop_refs (struct ext4_ext_path*) ;
 struct ext4_ext_path* ext4_find_extent (struct inode*,int ,struct ext4_ext_path**,int ) ;
 size_t ext_depth (struct inode*) ;
 int kfree (struct ext4_ext_path*) ;

__attribute__((used)) static inline int
get_ext_path(struct inode *inode, ext4_lblk_t lblock,
  struct ext4_ext_path **ppath)
{
 struct ext4_ext_path *path;

 path = ext4_find_extent(inode, lblock, ppath, EXT4_EX_NOCACHE);
 if (IS_ERR(path))
  return PTR_ERR(path);
 if (path[ext_depth(inode)].p_ext == ((void*)0)) {
  ext4_ext_drop_refs(path);
  kfree(path);
  *ppath = ((void*)0);
  return -ENODATA;
 }
 *ppath = path;
 return 0;
}
