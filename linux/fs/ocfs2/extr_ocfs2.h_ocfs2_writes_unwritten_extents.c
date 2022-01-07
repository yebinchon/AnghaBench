
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int s_feature_ro_compat; } ;


 int OCFS2_FEATURE_RO_COMPAT_UNWRITTEN ;
 int ocfs2_sparse_alloc (struct ocfs2_super*) ;

__attribute__((used)) static inline int ocfs2_writes_unwritten_extents(struct ocfs2_super *osb)
{



 if (!ocfs2_sparse_alloc(osb))
  return 0;

 if (osb->s_feature_ro_compat & OCFS2_FEATURE_RO_COMPAT_UNWRITTEN)
  return 1;
 return 0;
}
