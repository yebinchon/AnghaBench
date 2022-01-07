
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;


 unsigned int OCFS2_DX_LINK_MAX ;
 unsigned int OCFS2_LINK_MAX ;
 scalar_t__ ocfs2_supports_indexed_dirs (struct ocfs2_super*) ;

__attribute__((used)) static inline unsigned int ocfs2_link_max(struct ocfs2_super *osb)
{
 if (ocfs2_supports_indexed_dirs(osb))
  return OCFS2_DX_LINK_MAX;
 return OCFS2_LINK_MAX;
}
