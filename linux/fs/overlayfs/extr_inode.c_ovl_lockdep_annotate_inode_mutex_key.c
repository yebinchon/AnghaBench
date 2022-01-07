
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lock_class_key {int dummy; } ;
struct inode {int i_rwsem; int i_mode; TYPE_1__* i_sb; } ;
struct TYPE_4__ {int lock; } ;
struct TYPE_3__ {int s_stack_depth; } ;


 TYPE_2__* OVL_I (struct inode*) ;
 int OVL_MAX_NESTING ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int lockdep_set_class (int *,struct lock_class_key*) ;

__attribute__((used)) static inline void ovl_lockdep_annotate_inode_mutex_key(struct inode *inode)
{
}
