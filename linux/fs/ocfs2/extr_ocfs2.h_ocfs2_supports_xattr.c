
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int s_feature_incompat; } ;


 int OCFS2_FEATURE_INCOMPAT_XATTR ;

__attribute__((used)) static inline int ocfs2_supports_xattr(struct ocfs2_super *osb)
{
 if (osb->s_feature_incompat & OCFS2_FEATURE_INCOMPAT_XATTR)
  return 1;
 return 0;
}
