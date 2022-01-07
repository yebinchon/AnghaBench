
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nlm_block {TYPE_3__* b_call; } ;
struct TYPE_4__ {int fl; } ;
struct TYPE_5__ {TYPE_1__ lock; } ;
struct TYPE_6__ {TYPE_2__ a_args; } ;


 int dprintk (char*,struct nlm_block*) ;
 int locks_delete_block (int *) ;
 int nlmsvc_remove_block (struct nlm_block*) ;

__attribute__((used)) static int nlmsvc_unlink_block(struct nlm_block *block)
{
 int status;
 dprintk("lockd: unlinking block %p...\n", block);


 status = locks_delete_block(&block->b_call->a_args.lock.fl);
 nlmsvc_remove_block(block);
 return status;
}
