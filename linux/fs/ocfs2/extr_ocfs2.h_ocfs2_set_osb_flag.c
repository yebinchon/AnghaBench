
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {unsigned long osb_flags; int osb_lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void ocfs2_set_osb_flag(struct ocfs2_super *osb,
          unsigned long flag)
{
 spin_lock(&osb->osb_lock);
 osb->osb_flags |= flag;
 spin_unlock(&osb->osb_lock);
}
