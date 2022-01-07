
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_dev; } ;
struct fs_context {int s_fs_info; } ;


 int fuse_conn_get (int ) ;
 int get_anon_bdev (int *) ;

__attribute__((used)) static int virtio_fs_set_super(struct super_block *sb,
          struct fs_context *fsc)
{
 int err;

 err = get_anon_bdev(&sb->s_dev);
 if (!err)
  fuse_conn_get(fsc->s_fs_info);

 return err;
}
