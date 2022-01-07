
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file_lock_context {int flc_lock; int flc_lease; int flc_flock; int flc_posix; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int i_flctx; } ;


 int locks_check_ctx_file_list (struct file*,int *,char*) ;
 TYPE_1__* locks_inode (struct file*) ;
 int locks_remove_flock (struct file*,struct file_lock_context*) ;
 int locks_remove_lease (struct file*,struct file_lock_context*) ;
 int locks_remove_posix (struct file*,struct file*) ;
 struct file_lock_context* smp_load_acquire (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void locks_remove_file(struct file *filp)
{
 struct file_lock_context *ctx;

 ctx = smp_load_acquire(&locks_inode(filp)->i_flctx);
 if (!ctx)
  return;


 locks_remove_posix(filp, filp);


 locks_remove_flock(filp, ctx);


 locks_remove_lease(filp, ctx);

 spin_lock(&ctx->flc_lock);
 locks_check_ctx_file_list(filp, &ctx->flc_posix, "POSIX");
 locks_check_ctx_file_list(filp, &ctx->flc_flock, "FLOCK");
 locks_check_ctx_file_list(filp, &ctx->flc_lease, "LEASE");
 spin_unlock(&ctx->flc_lock);
}
