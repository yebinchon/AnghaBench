
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cookie; int node; int convert_type; int type; } ;
struct dlm_lock {int spinlock; scalar_t__ unlock_pending; scalar_t__ cancel_pending; scalar_t__ lock_pending; scalar_t__ convert_pending; scalar_t__ bast_pending; int bast_list; scalar_t__ ast_pending; int ast_list; int lock_refs; TYPE_1__ ml; } ;


 int be64_to_cpu (int ) ;
 int dlm_get_lock_cookie_node (int ) ;
 int dlm_get_lock_cookie_seq (int ) ;
 int kref_read (int *) ;
 scalar_t__ list_empty (int *) ;
 int printk (char*,int ,int ,int ,int ,int ,int ,char,char,char,char,char,char,char,char) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void __dlm_print_lock(struct dlm_lock *lock)
{
 spin_lock(&lock->spinlock);

 printk("    type=%d, conv=%d, node=%u, cookie=%u:%llu, "
        "ref=%u, ast=(empty=%c,pend=%c), bast=(empty=%c,pend=%c), "
        "pending=(conv=%c,lock=%c,cancel=%c,unlock=%c)\n",
        lock->ml.type, lock->ml.convert_type, lock->ml.node,
        dlm_get_lock_cookie_node(be64_to_cpu(lock->ml.cookie)),
        dlm_get_lock_cookie_seq(be64_to_cpu(lock->ml.cookie)),
        kref_read(&lock->lock_refs),
        (list_empty(&lock->ast_list) ? 'y' : 'n'),
        (lock->ast_pending ? 'y' : 'n'),
        (list_empty(&lock->bast_list) ? 'y' : 'n'),
        (lock->bast_pending ? 'y' : 'n'),
        (lock->convert_pending ? 'y' : 'n'),
        (lock->lock_pending ? 'y' : 'n'),
        (lock->cancel_pending ? 'y' : 'n'),
        (lock->unlock_pending ? 'y' : 'n'));

 spin_unlock(&lock->spinlock);
}
