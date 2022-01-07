
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vfsmount {int mnt_flags; } ;
struct super_block {int dummy; } ;
struct path {int dentry; } ;
struct ovl_sb {int dummy; } ;
struct ovl_layer {int dummy; } ;
struct TYPE_4__ {scalar_t__ xino; } ;
struct ovl_fs {size_t numlower; int numlowerfs; int xino_bits; TYPE_2__ config; int upper_mnt; int * lower_fs; TYPE_1__* lower_layers; } ;
struct inode {int dummy; } ;
struct TYPE_3__ {unsigned int idx; int fsid; int * fs; struct vfsmount* mnt; struct inode* trap; } ;


 int BUILD_BUG_ON (int) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct vfsmount*) ;
 int MNT_NOATIME ;
 int MNT_READONLY ;
 int OVL_MAX_STACK ;
 scalar_t__ OVL_XINO_OFF ;
 scalar_t__ OVL_XINO_ON ;
 int PTR_ERR (struct vfsmount*) ;
 struct vfsmount* clone_private_mount (struct path*) ;
 int ilog2 (int) ;
 int iput (struct inode*) ;
 void* kcalloc (unsigned int,int,int ) ;
 int ovl_get_fsid (struct ovl_fs*,struct path*) ;
 scalar_t__ ovl_is_inuse (int ) ;
 int ovl_report_in_use (struct ovl_fs*,char*) ;
 int ovl_setup_trap (struct super_block*,int ,struct inode**,char*) ;
 int pr_err (char*) ;
 int pr_info (char*,int) ;

__attribute__((used)) static int ovl_get_lower_layers(struct super_block *sb, struct ovl_fs *ofs,
    struct path *stack, unsigned int numlower)
{
 int err;
 unsigned int i;

 err = -ENOMEM;
 ofs->lower_layers = kcalloc(numlower, sizeof(struct ovl_layer),
        GFP_KERNEL);
 if (ofs->lower_layers == ((void*)0))
  goto out;

 ofs->lower_fs = kcalloc(numlower, sizeof(struct ovl_sb),
    GFP_KERNEL);
 if (ofs->lower_fs == ((void*)0))
  goto out;

 for (i = 0; i < numlower; i++) {
  struct vfsmount *mnt;
  struct inode *trap;
  int fsid;

  err = fsid = ovl_get_fsid(ofs, &stack[i]);
  if (err < 0)
   goto out;

  err = ovl_setup_trap(sb, stack[i].dentry, &trap, "lowerdir");
  if (err)
   goto out;

  if (ovl_is_inuse(stack[i].dentry)) {
   err = ovl_report_in_use(ofs, "lowerdir");
   if (err)
    goto out;
  }

  mnt = clone_private_mount(&stack[i]);
  err = PTR_ERR(mnt);
  if (IS_ERR(mnt)) {
   pr_err("overlayfs: failed to clone lowerpath\n");
   iput(trap);
   goto out;
  }





  mnt->mnt_flags |= MNT_READONLY | MNT_NOATIME;

  ofs->lower_layers[ofs->numlower].trap = trap;
  ofs->lower_layers[ofs->numlower].mnt = mnt;
  ofs->lower_layers[ofs->numlower].idx = i + 1;
  ofs->lower_layers[ofs->numlower].fsid = fsid;
  if (fsid) {
   ofs->lower_layers[ofs->numlower].fs =
    &ofs->lower_fs[fsid - 1];
  }
  ofs->numlower++;
 }
 if (!ofs->numlowerfs || (ofs->numlowerfs == 1 && !ofs->upper_mnt)) {
  ofs->xino_bits = 0;
  ofs->config.xino = OVL_XINO_OFF;
 } else if (ofs->config.xino == OVL_XINO_ON && !ofs->xino_bits) {





  BUILD_BUG_ON(ilog2(OVL_MAX_STACK) > 31);
  ofs->xino_bits = ilog2(ofs->numlowerfs) + 1;
 }

 if (ofs->xino_bits) {
  pr_info("overlayfs: \"xino\" feature enabled using %d upper inode bits.\n",
   ofs->xino_bits);
 }

 err = 0;
out:
 return err;
}
