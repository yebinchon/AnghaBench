
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct TYPE_2__ {int type; int cookie; scalar_t__ flags; scalar_t__ list; scalar_t__ pad1; int node; void* highest_blocked; void* convert_type; } ;
struct dlm_lock {int lock_refs; scalar_t__ lksb_kernel_allocated; scalar_t__ cancel_pending; scalar_t__ unlock_pending; scalar_t__ lock_pending; scalar_t__ convert_pending; scalar_t__ bast_pending; scalar_t__ ast_pending; TYPE_1__ ml; int * astdata; int * bast; int * ast; int spinlock; int bast_list; int ast_list; int list; } ;


 int INIT_LIST_HEAD (int *) ;
 void* LKM_IVMODE ;
 int cpu_to_be64 (int ) ;
 int kref_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void dlm_init_lock(struct dlm_lock *newlock, int type,
     u8 node, u64 cookie)
{
 INIT_LIST_HEAD(&newlock->list);
 INIT_LIST_HEAD(&newlock->ast_list);
 INIT_LIST_HEAD(&newlock->bast_list);
 spin_lock_init(&newlock->spinlock);
 newlock->ml.type = type;
 newlock->ml.convert_type = LKM_IVMODE;
 newlock->ml.highest_blocked = LKM_IVMODE;
 newlock->ml.node = node;
 newlock->ml.pad1 = 0;
 newlock->ml.list = 0;
 newlock->ml.flags = 0;
 newlock->ast = ((void*)0);
 newlock->bast = ((void*)0);
 newlock->astdata = ((void*)0);
 newlock->ml.cookie = cpu_to_be64(cookie);
 newlock->ast_pending = 0;
 newlock->bast_pending = 0;
 newlock->convert_pending = 0;
 newlock->lock_pending = 0;
 newlock->unlock_pending = 0;
 newlock->cancel_pending = 0;
 newlock->lksb_kernel_allocated = 0;

 kref_init(&newlock->lock_refs);
}
