
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_dx_root_block {int dr_flags; } ;


 int OCFS2_DX_FLAG_INLINE ;

__attribute__((used)) static inline int ocfs2_dx_root_inline(struct ocfs2_dx_root_block *dx_root)
{
 return dx_root->dr_flags & OCFS2_DX_FLAG_INLINE;
}
