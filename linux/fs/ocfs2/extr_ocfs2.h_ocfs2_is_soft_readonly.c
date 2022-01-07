
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int osb_flags; int osb_lock; } ;


 int OCFS2_OSB_SOFT_RO ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline int ocfs2_is_soft_readonly(struct ocfs2_super *osb)
{
 int ret;

 spin_lock(&osb->osb_lock);
 ret = osb->osb_flags & OCFS2_OSB_SOFT_RO;
 spin_unlock(&osb->osb_lock);

 return ret;
}
