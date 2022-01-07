
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsnotify_mark {int mask; } ;
struct audit_tree_mark {struct fsnotify_mark mark; } ;


 int FS_IN_IGNORED ;
 int GFP_KERNEL ;
 int audit_tree_group ;
 int audit_tree_mark_cachep ;
 int fsnotify_init_mark (struct fsnotify_mark*,int ) ;
 struct audit_tree_mark* kmem_cache_zalloc (int ,int ) ;

__attribute__((used)) static struct fsnotify_mark *alloc_mark(void)
{
 struct audit_tree_mark *amark;

 amark = kmem_cache_zalloc(audit_tree_mark_cachep, GFP_KERNEL);
 if (!amark)
  return ((void*)0);
 fsnotify_init_mark(&amark->mark, audit_tree_group);
 amark->mark.mask = FS_IN_IGNORED;
 return &amark->mark;
}
