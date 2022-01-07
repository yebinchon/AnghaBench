
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct fuse_inode {int state; } ;
struct fuse_conn {int readdirplus_auto; int do_readdirplus; } ;
struct dir_context {scalar_t__ pos; } ;


 int FUSE_I_ADVISE_RDPLUS ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

__attribute__((used)) static bool fuse_use_readdirplus(struct inode *dir, struct dir_context *ctx)
{
 struct fuse_conn *fc = get_fuse_conn(dir);
 struct fuse_inode *fi = get_fuse_inode(dir);

 if (!fc->do_readdirplus)
  return 0;
 if (!fc->readdirplus_auto)
  return 1;
 if (test_and_clear_bit(FUSE_I_ADVISE_RDPLUS, &fi->state))
  return 1;
 if (ctx->pos == 0)
  return 1;
 return 0;
}
