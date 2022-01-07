
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ext4_ext_path {int dummy; } ;
struct TYPE_6__ {int h_buffer_credits; } ;
typedef TYPE_1__ handle_t ;


 int EAGAIN ;
 int ext4_ext_get_access (TYPE_1__*,struct inode*,struct ext4_ext_path*) ;
 int ext4_ext_truncate_extend_restart (TYPE_1__*,struct inode*,int) ;
 int ext4_handle_valid (TYPE_1__*) ;
 int ext4_writepage_trans_blocks (struct inode*) ;

__attribute__((used)) static int
ext4_access_path(handle_t *handle, struct inode *inode,
  struct ext4_ext_path *path)
{
 int credits, err;

 if (!ext4_handle_valid(handle))
  return 0;







 if (handle->h_buffer_credits < 7) {
  credits = ext4_writepage_trans_blocks(inode);
  err = ext4_ext_truncate_extend_restart(handle, inode, credits);

  if (err && err != -EAGAIN)
   return err;
 }

 err = ext4_ext_get_access(handle, inode, path);
 return err;
}
