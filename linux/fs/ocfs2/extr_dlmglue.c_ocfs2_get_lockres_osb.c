
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_super {int dummy; } ;
struct ocfs2_lock_res {scalar_t__ l_priv; TYPE_1__* l_ops; } ;
struct TYPE_2__ {struct ocfs2_super* (* get_osb ) (struct ocfs2_lock_res*) ;} ;


 struct ocfs2_super* stub1 (struct ocfs2_lock_res*) ;

__attribute__((used)) static inline struct ocfs2_super *ocfs2_get_lockres_osb(struct ocfs2_lock_res *lockres)
{
 if (lockres->l_ops->get_osb)
  return lockres->l_ops->get_osb(lockres);

 return (struct ocfs2_super *)lockres->l_priv;
}
