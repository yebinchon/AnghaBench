
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_lock_res {int l_flags; scalar_t__ l_level; scalar_t__ l_requested; TYPE_1__* l_ops; } ;
struct TYPE_2__ {int flags; } ;


 int BUG_ON (int) ;
 scalar_t__ DLM_LOCK_NL ;
 int LOCK_TYPE_REQUIRES_REFRESH ;
 int OCFS2_LOCK_ATTACHED ;
 int OCFS2_LOCK_BUSY ;
 int OCFS2_LOCK_NEEDS_REFRESH ;
 int OCFS2_LOCK_NONBLOCK_FINISHED ;
 int OCFS2_LOCK_UPCONVERT_FINISHING ;
 int lockres_clear_flags (struct ocfs2_lock_res*,int) ;
 int lockres_or_flags (struct ocfs2_lock_res*,int ) ;

__attribute__((used)) static inline void ocfs2_generic_handle_convert_action(struct ocfs2_lock_res *lockres)
{
 BUG_ON(!(lockres->l_flags & OCFS2_LOCK_BUSY));
 BUG_ON(!(lockres->l_flags & OCFS2_LOCK_ATTACHED));





 if (lockres->l_level == DLM_LOCK_NL &&
     lockres->l_ops->flags & LOCK_TYPE_REQUIRES_REFRESH)
  lockres_or_flags(lockres, OCFS2_LOCK_NEEDS_REFRESH);

 lockres->l_level = lockres->l_requested;
 if (!(lockres->l_flags & OCFS2_LOCK_NONBLOCK_FINISHED))
  lockres_or_flags(lockres, OCFS2_LOCK_UPCONVERT_FINISHING);
 else
  lockres_clear_flags(lockres, OCFS2_LOCK_NONBLOCK_FINISHED);

 lockres_clear_flags(lockres, OCFS2_LOCK_BUSY);
}
