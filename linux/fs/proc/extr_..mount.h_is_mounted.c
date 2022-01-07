
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct TYPE_2__ {int mnt_ns; } ;


 int IS_ERR_OR_NULL (int ) ;
 TYPE_1__* real_mount (struct vfsmount*) ;

__attribute__((used)) static inline int is_mounted(struct vfsmount *mnt)
{

 return !IS_ERR_OR_NULL(real_mount(mnt)->mnt_ns);
}
