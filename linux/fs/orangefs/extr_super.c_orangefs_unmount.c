
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; int orangefs_config_server; int fs_id; } ;
struct TYPE_6__ {TYPE_1__ fs_umount; } ;
struct TYPE_5__ {TYPE_3__ req; } ;
struct orangefs_kernel_op_s {TYPE_2__ upcall; } ;
typedef int __s32 ;


 int ENOMEM ;
 scalar_t__ ORANGEFS_MAX_SERVER_ADDR_LEN ;
 int ORANGEFS_VFS_OP_FS_UMOUNT ;
 int gossip_err (char*,int) ;
 struct orangefs_kernel_op_s* op_alloc (int ) ;
 int op_release (struct orangefs_kernel_op_s*) ;
 int service_operation (struct orangefs_kernel_op_s*,char*,int ) ;
 int strncpy (int ,char const*,scalar_t__) ;

__attribute__((used)) static int orangefs_unmount(int id, __s32 fs_id, const char *devname)
{
 struct orangefs_kernel_op_s *op;
 int r;
 op = op_alloc(ORANGEFS_VFS_OP_FS_UMOUNT);
 if (!op)
  return -ENOMEM;
 op->upcall.req.fs_umount.id = id;
 op->upcall.req.fs_umount.fs_id = fs_id;
 strncpy(op->upcall.req.fs_umount.orangefs_config_server,
     devname, ORANGEFS_MAX_SERVER_ADDR_LEN - 1);
 r = service_operation(op, "orangefs_fs_umount", 0);

 if (r)
  gossip_err("orangefs_unmount: service_operation %d\n", r);
 op_release(op);
 return r;
}
