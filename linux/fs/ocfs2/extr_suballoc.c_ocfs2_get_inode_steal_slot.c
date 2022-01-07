
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;


 int INODE_ALLOC_SYSTEM_INODE ;
 int __ocfs2_get_steal_slot (struct ocfs2_super*,int ) ;

__attribute__((used)) static int ocfs2_get_inode_steal_slot(struct ocfs2_super *osb)
{
 return __ocfs2_get_steal_slot(osb, INODE_ALLOC_SYSTEM_INODE);
}
