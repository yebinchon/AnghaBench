
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_blocksize; scalar_t__ s_bdev; } ;
struct seq_file {int dummy; } ;
struct fuse_conn {int max_read; scalar_t__ allow_other; scalar_t__ default_permissions; int group_id; int user_ns; int user_id; scalar_t__ no_mount_options; } ;
struct dentry {struct super_block* d_sb; } ;


 int FUSE_DEFAULT_BLKSIZE ;
 int from_kgid_munged (int ,int ) ;
 int from_kuid_munged (int ,int ) ;
 struct fuse_conn* get_fuse_conn_super (struct super_block*) ;
 int seq_printf (struct seq_file*,char*,int ) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int fuse_show_options(struct seq_file *m, struct dentry *root)
{
 struct super_block *sb = root->d_sb;
 struct fuse_conn *fc = get_fuse_conn_super(sb);

 if (fc->no_mount_options)
  return 0;

 seq_printf(m, ",user_id=%u", from_kuid_munged(fc->user_ns, fc->user_id));
 seq_printf(m, ",group_id=%u", from_kgid_munged(fc->user_ns, fc->group_id));
 if (fc->default_permissions)
  seq_puts(m, ",default_permissions");
 if (fc->allow_other)
  seq_puts(m, ",allow_other");
 if (fc->max_read != ~0)
  seq_printf(m, ",max_read=%u", fc->max_read);
 if (sb->s_bdev && sb->s_blocksize != FUSE_DEFAULT_BLKSIZE)
  seq_printf(m, ",blksize=%lu", sb->s_blocksize);
 return 0;
}
