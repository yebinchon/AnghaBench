
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct orangefs_sb_info_s {scalar_t__ mount_pending; int id; int devname; } ;
struct TYPE_14__ {scalar_t__ features; } ;
struct TYPE_10__ {int id; } ;
struct TYPE_15__ {TYPE_6__ features; TYPE_2__ fs_mount; } ;
struct TYPE_16__ {TYPE_7__ resp; } ;
struct TYPE_11__ {scalar_t__ features; } ;
struct TYPE_9__ {int orangefs_config_server; } ;
struct TYPE_12__ {TYPE_3__ features; TYPE_1__ fs_mount; } ;
struct TYPE_13__ {TYPE_4__ req; } ;
struct orangefs_kernel_op_s {TYPE_8__ downcall; TYPE_5__ upcall; } ;


 int EINVAL ;
 int ENOMEM ;
 int GOSSIP_SUPER_DEBUG ;
 int ORANGEFS_MAX_SERVER_ADDR_LEN ;
 int ORANGEFS_OP_NO_MUTEX ;
 int ORANGEFS_OP_PRIORITY ;
 int ORANGEFS_VFS_OP_FEATURES ;
 int ORANGEFS_VFS_OP_FS_MOUNT ;
 int gossip_debug (int ,char*,...) ;
 struct orangefs_kernel_op_s* op_alloc (int ) ;
 int op_release (struct orangefs_kernel_op_s*) ;
 scalar_t__ orangefs_features ;
 int orangefs_userspace_version ;
 int service_operation (struct orangefs_kernel_op_s*,char*,int) ;
 int strncpy (int,int ,int ) ;

int orangefs_remount(struct orangefs_sb_info_s *orangefs_sb)
{
 struct orangefs_kernel_op_s *new_op;
 int ret = -EINVAL;

 gossip_debug(GOSSIP_SUPER_DEBUG, "orangefs_remount: called\n");

 new_op = op_alloc(ORANGEFS_VFS_OP_FS_MOUNT);
 if (!new_op)
  return -ENOMEM;
 strncpy(new_op->upcall.req.fs_mount.orangefs_config_server,
  orangefs_sb->devname,
  ORANGEFS_MAX_SERVER_ADDR_LEN);

 gossip_debug(GOSSIP_SUPER_DEBUG,
       "Attempting ORANGEFS Remount via host %s\n",
       new_op->upcall.req.fs_mount.orangefs_config_server);






 ret = service_operation(new_op, "orangefs_remount",
  ORANGEFS_OP_PRIORITY | ORANGEFS_OP_NO_MUTEX);
 gossip_debug(GOSSIP_SUPER_DEBUG,
       "orangefs_remount: mount got return value of %d\n",
       ret);
 if (ret == 0) {





  orangefs_sb->id = new_op->downcall.resp.fs_mount.id;
  orangefs_sb->mount_pending = 0;
 }

 op_release(new_op);

 if (orangefs_userspace_version >= 20906) {
  new_op = op_alloc(ORANGEFS_VFS_OP_FEATURES);
  if (!new_op)
   return -ENOMEM;
  new_op->upcall.req.features.features = 0;
  ret = service_operation(new_op, "orangefs_features",
      ORANGEFS_OP_PRIORITY | ORANGEFS_OP_NO_MUTEX);
  if (!ret)
   orangefs_features =
       new_op->downcall.resp.features.features;
  else
   orangefs_features = 0;
  op_release(new_op);
 } else {
  orangefs_features = 0;
 }

 return ret;
}
