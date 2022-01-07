
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct path {int dummy; } ;
struct nsproxy {struct mnt_namespace* mnt_ns; } ;
struct ns_common {int dummy; } ;
struct mnt_namespace {TYPE_1__* root; int user_ns; } ;
struct fs_struct {int users; } ;
struct TYPE_6__ {struct fs_struct* fs; } ;
struct TYPE_5__ {int mnt_root; } ;
struct TYPE_4__ {TYPE_2__ mnt; } ;


 int CAP_SYS_ADMIN ;
 int CAP_SYS_CHROOT ;
 int EINVAL ;
 int EPERM ;
 int LOOKUP_DOWN ;
 TYPE_3__* current ;
 int current_user_ns () ;
 int get_mnt_ns (struct mnt_namespace*) ;
 scalar_t__ is_anon_ns (struct mnt_namespace*) ;
 int ns_capable (int ,int ) ;
 int path_put (struct path*) ;
 int put_mnt_ns (struct mnt_namespace*) ;
 int set_fs_pwd (struct fs_struct*,struct path*) ;
 int set_fs_root (struct fs_struct*,struct path*) ;
 struct mnt_namespace* to_mnt_ns (struct ns_common*) ;
 int vfs_path_lookup (int ,TYPE_2__*,char*,int ,struct path*) ;

__attribute__((used)) static int mntns_install(struct nsproxy *nsproxy, struct ns_common *ns)
{
 struct fs_struct *fs = current->fs;
 struct mnt_namespace *mnt_ns = to_mnt_ns(ns), *old_mnt_ns;
 struct path root;
 int err;

 if (!ns_capable(mnt_ns->user_ns, CAP_SYS_ADMIN) ||
     !ns_capable(current_user_ns(), CAP_SYS_CHROOT) ||
     !ns_capable(current_user_ns(), CAP_SYS_ADMIN))
  return -EPERM;

 if (is_anon_ns(mnt_ns))
  return -EINVAL;

 if (fs->users != 1)
  return -EINVAL;

 get_mnt_ns(mnt_ns);
 old_mnt_ns = nsproxy->mnt_ns;
 nsproxy->mnt_ns = mnt_ns;


 err = vfs_path_lookup(mnt_ns->root->mnt.mnt_root, &mnt_ns->root->mnt,
    "/", LOOKUP_DOWN, &root);
 if (err) {

  nsproxy->mnt_ns = old_mnt_ns;
  put_mnt_ns(mnt_ns);
  return err;
 }

 put_mnt_ns(old_mnt_ns);


 set_fs_pwd(fs, &root);
 set_fs_root(fs, &root);

 path_put(&root);
 return 0;
}
