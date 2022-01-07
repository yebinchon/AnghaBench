
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_alloc_context {int dummy; } ;


 int INODE_ALLOC_SYSTEM_INODE ;
 int ocfs2_steal_resource (struct ocfs2_super*,struct ocfs2_alloc_context*,int ) ;

__attribute__((used)) static int ocfs2_steal_inode(struct ocfs2_super *osb,
        struct ocfs2_alloc_context *ac)
{
 return ocfs2_steal_resource(osb, ac, INODE_ALLOC_SYSTEM_INODE);
}
