
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_lock_context {int io_count; } ;


 int atomic_read (int *) ;
 int wait_var_event_killable (int *,int) ;

int
nfs_iocounter_wait(struct nfs_lock_context *l_ctx)
{
 return wait_var_event_killable(&l_ctx->io_count,
           !atomic_read(&l_ctx->io_count));
}
