
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ocfs2_super {int sb; } ;
struct ocfs2_refcount_tree {int rf_getcnt; int rf_blkno; } ;


 int GFP_NOFS ;
 int kref_init (int *) ;
 struct ocfs2_refcount_tree* kzalloc (int,int ) ;
 int ocfs2_init_refcount_tree_ci (struct ocfs2_refcount_tree*,int ) ;

__attribute__((used)) static struct ocfs2_refcount_tree*
ocfs2_allocate_refcount_tree(struct ocfs2_super *osb, u64 rf_blkno)
{
 struct ocfs2_refcount_tree *new;

 new = kzalloc(sizeof(struct ocfs2_refcount_tree), GFP_NOFS);
 if (!new)
  return ((void*)0);

 new->rf_blkno = rf_blkno;
 kref_init(&new->rf_getcnt);
 ocfs2_init_refcount_tree_ci(new, osb->sb);

 return new;
}
