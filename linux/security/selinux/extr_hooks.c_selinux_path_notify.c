
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct path {TYPE_2__* dentry; } ;
struct TYPE_3__ {struct path path; } ;
struct common_audit_data {TYPE_1__ u; int type; } ;
struct TYPE_4__ {int d_sb; } ;


 int ALL_FSNOTIFY_PERM_EVENTS ;
 int EINVAL ;
 int FILESYSTEM__WATCH ;
 int FILE__WATCH ;
 int FILE__WATCH_MOUNT ;
 int FILE__WATCH_READS ;
 int FILE__WATCH_SB ;
 int FILE__WATCH_WITH_PERM ;



 int FS_ACCESS ;
 int FS_ACCESS_PERM ;
 int FS_CLOSE_NOWRITE ;
 int LSM_AUDIT_DATA_PATH ;
 int current_cred () ;
 int path_has_perm (int ,struct path const*,int ) ;
 int superblock_has_perm (int ,int ,int ,struct common_audit_data*) ;

__attribute__((used)) static int selinux_path_notify(const struct path *path, u64 mask,
      unsigned int obj_type)
{
 int ret;
 u32 perm;

 struct common_audit_data ad;

 ad.type = LSM_AUDIT_DATA_PATH;
 ad.u.path = *path;





 switch (obj_type) {
 case 128:
  perm = FILE__WATCH_MOUNT;
  break;
 case 129:
  perm = FILE__WATCH_SB;
  ret = superblock_has_perm(current_cred(), path->dentry->d_sb,
      FILESYSTEM__WATCH, &ad);
  if (ret)
   return ret;
  break;
 case 130:
  perm = FILE__WATCH;
  break;
 default:
  return -EINVAL;
 }


 if (mask & (ALL_FSNOTIFY_PERM_EVENTS))
  perm |= FILE__WATCH_WITH_PERM;


 if (mask & (FS_ACCESS | FS_ACCESS_PERM | FS_CLOSE_NOWRITE))
  perm |= FILE__WATCH_READS;

 return path_has_perm(current_cred(), path, perm);
}
