
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_4__ {scalar_t__ priv; } ;
struct fuse_conn {TYPE_1__ iq; } ;
struct fs_context {struct fuse_conn* s_fs_info; } ;
struct TYPE_5__ {scalar_t__ priv; } ;
struct TYPE_6__ {TYPE_2__ iq; } ;


 TYPE_3__* get_fuse_conn_super (struct super_block*) ;

__attribute__((used)) static int virtio_fs_test_super(struct super_block *sb,
    struct fs_context *fsc)
{
 struct fuse_conn *fc = fsc->s_fs_info;

 return fc->iq.priv == get_fuse_conn_super(sb)->iq.priv;
}
