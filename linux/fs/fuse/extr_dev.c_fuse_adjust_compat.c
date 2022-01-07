
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fuse_open_in {int dummy; } ;
struct fuse_conn {int minor; } ;
struct fuse_args {int opcode; TYPE_2__* in_args; TYPE_1__* out_args; } ;
struct TYPE_4__ {int size; } ;
struct TYPE_3__ {int size; } ;


 int FUSE_COMPAT_ATTR_OUT_SIZE ;
 int FUSE_COMPAT_ENTRY_OUT_SIZE ;
 int FUSE_COMPAT_MKNOD_IN_SIZE ;
 int FUSE_COMPAT_STATFS_SIZE ;







 int FUSE_STATFS ;


__attribute__((used)) static void fuse_adjust_compat(struct fuse_conn *fc, struct fuse_args *args)
{
 if (fc->minor < 4 && args->opcode == FUSE_STATFS)
  args->out_args[0].size = FUSE_COMPAT_STATFS_SIZE;

 if (fc->minor < 9) {
  switch (args->opcode) {
  case 132:
  case 135:
  case 130:
  case 131:
  case 128:
  case 133:
   args->out_args[0].size = FUSE_COMPAT_ENTRY_OUT_SIZE;
   break;
  case 134:
  case 129:
   args->out_args[0].size = FUSE_COMPAT_ATTR_OUT_SIZE;
   break;
  }
 }
 if (fc->minor < 12) {
  switch (args->opcode) {
  case 135:
   args->in_args[0].size = sizeof(struct fuse_open_in);
   break;
  case 130:
   args->in_args[0].size = FUSE_COMPAT_MKNOD_IN_SIZE;
   break;
  }
 }
}
