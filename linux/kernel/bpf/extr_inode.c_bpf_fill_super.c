
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tree_descr {char* member_0; } ;
struct super_block {TYPE_1__* s_root; int * s_op; } ;
struct inode {int i_mode; int * i_op; } ;
struct fs_context {struct bpf_mount_opts* fs_private; } ;
struct bpf_mount_opts {int mode; } ;
struct TYPE_2__ {struct inode* d_inode; } ;


 int BPF_FS_MAGIC ;
 int S_IALLUGO ;
 int S_ISVTX ;
 int bpf_dir_iops ;
 int bpf_super_ops ;
 int simple_fill_super (struct super_block*,int ,struct tree_descr const*) ;

__attribute__((used)) static int bpf_fill_super(struct super_block *sb, struct fs_context *fc)
{
 static const struct tree_descr bpf_rfiles[] = { { "" } };
 struct bpf_mount_opts *opts = fc->fs_private;
 struct inode *inode;
 int ret;

 ret = simple_fill_super(sb, BPF_FS_MAGIC, bpf_rfiles);
 if (ret)
  return ret;

 sb->s_op = &bpf_super_ops;

 inode = sb->s_root->d_inode;
 inode->i_op = &bpf_dir_iops;
 inode->i_mode &= ~S_IALLUGO;
 inode->i_mode |= S_ISVTX | opts->mode;

 return 0;
}
