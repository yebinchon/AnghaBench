
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct the_nilfs {int ns_dat; int ns_cpfile; int ns_sufile; int ns_sem; } ;
struct super_block {int s_time_gran; int * s_root; TYPE_1__* s_bdev; int s_bdi; int s_max_links; int * s_export_op; int * s_op; struct the_nilfs* s_fs_info; } ;
struct nilfs_root {int dummy; } ;
typedef scalar_t__ __u64 ;
struct TYPE_2__ {int bd_bdi; } ;


 int ENOMEM ;
 int KERN_ERR ;
 int NILFS_LINK_MAX ;
 struct the_nilfs* alloc_nilfs (struct super_block*) ;
 int bdi_get (int ) ;
 int destroy_nilfs (struct the_nilfs*) ;
 int down_write (int *) ;
 int init_nilfs (struct the_nilfs*,struct super_block*,char*) ;
 int iput (int ) ;
 int load_nilfs (struct the_nilfs*,struct super_block*) ;
 int nilfs_attach_checkpoint (struct super_block*,scalar_t__,int,struct nilfs_root**) ;
 int nilfs_attach_log_writer (struct super_block*,struct nilfs_root*) ;
 int nilfs_detach_log_writer (struct super_block*) ;
 int nilfs_export_ops ;
 int nilfs_get_root_dentry (struct super_block*,struct nilfs_root*,int **) ;
 scalar_t__ nilfs_last_cno (struct the_nilfs*) ;
 int nilfs_msg (struct super_block*,int ,char*,int,unsigned long long) ;
 int nilfs_put_root (struct nilfs_root*) ;
 int nilfs_setup_super (struct super_block*,int) ;
 int nilfs_sops ;
 int sb_rdonly (struct super_block*) ;
 int up_write (int *) ;

__attribute__((used)) static int
nilfs_fill_super(struct super_block *sb, void *data, int silent)
{
 struct the_nilfs *nilfs;
 struct nilfs_root *fsroot;
 __u64 cno;
 int err;

 nilfs = alloc_nilfs(sb);
 if (!nilfs)
  return -ENOMEM;

 sb->s_fs_info = nilfs;

 err = init_nilfs(nilfs, sb, (char *)data);
 if (err)
  goto failed_nilfs;

 sb->s_op = &nilfs_sops;
 sb->s_export_op = &nilfs_export_ops;
 sb->s_root = ((void*)0);
 sb->s_time_gran = 1;
 sb->s_max_links = NILFS_LINK_MAX;

 sb->s_bdi = bdi_get(sb->s_bdev->bd_bdi);

 err = load_nilfs(nilfs, sb);
 if (err)
  goto failed_nilfs;

 cno = nilfs_last_cno(nilfs);
 err = nilfs_attach_checkpoint(sb, cno, 1, &fsroot);
 if (err) {
  nilfs_msg(sb, KERN_ERR,
     "error %d while loading last checkpoint (checkpoint number=%llu)",
     err, (unsigned long long)cno);
  goto failed_unload;
 }

 if (!sb_rdonly(sb)) {
  err = nilfs_attach_log_writer(sb, fsroot);
  if (err)
   goto failed_checkpoint;
 }

 err = nilfs_get_root_dentry(sb, fsroot, &sb->s_root);
 if (err)
  goto failed_segctor;

 nilfs_put_root(fsroot);

 if (!sb_rdonly(sb)) {
  down_write(&nilfs->ns_sem);
  nilfs_setup_super(sb, 1);
  up_write(&nilfs->ns_sem);
 }

 return 0;

 failed_segctor:
 nilfs_detach_log_writer(sb);

 failed_checkpoint:
 nilfs_put_root(fsroot);

 failed_unload:
 iput(nilfs->ns_sufile);
 iput(nilfs->ns_cpfile);
 iput(nilfs->ns_dat);

 failed_nilfs:
 destroy_nilfs(nilfs);
 return err;
}
