
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fs_context {int user_ns; TYPE_1__* fs_type; } ;
struct TYPE_2__ {int fs_flags; } ;


 int CAP_SYS_ADMIN ;
 int FS_USERNS_MOUNT ;
 int capable (int ) ;
 int ns_capable (int ,int ) ;

bool mount_capable(struct fs_context *fc)
{
 if (!(fc->fs_type->fs_flags & FS_USERNS_MOUNT))
  return capable(CAP_SYS_ADMIN);
 else
  return ns_capable(fc->user_ns, CAP_SYS_ADMIN);
}
