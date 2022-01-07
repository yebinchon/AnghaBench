
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_ino; TYPE_1__* i_sb; struct file_lock_context* i_flctx; } ;
struct file_lock_context {int flc_lease; int flc_posix; int flc_flock; } ;
struct TYPE_2__ {int s_dev; } ;


 int MAJOR (int ) ;
 int MINOR (int ) ;
 int list_empty (int *) ;
 int locks_dump_ctx_list (int *,char*) ;
 int pr_warn (char*,int ,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
locks_check_ctx_lists(struct inode *inode)
{
 struct file_lock_context *ctx = inode->i_flctx;

 if (unlikely(!list_empty(&ctx->flc_flock) ||
       !list_empty(&ctx->flc_posix) ||
       !list_empty(&ctx->flc_lease))) {
  pr_warn("Leaked locks on dev=0x%x:0x%x ino=0x%lx:\n",
   MAJOR(inode->i_sb->s_dev), MINOR(inode->i_sb->s_dev),
   inode->i_ino);
  locks_dump_ctx_list(&ctx->flc_flock, "FLOCK");
  locks_dump_ctx_list(&ctx->flc_posix, "POSIX");
  locks_dump_ctx_list(&ctx->flc_lease, "LEASE");
 }
}
