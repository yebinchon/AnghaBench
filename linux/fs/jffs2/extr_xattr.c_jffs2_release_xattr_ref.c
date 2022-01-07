
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jffs2_xattr_ref {void* node; struct jffs2_xattr_ref* next; } ;
struct jffs2_sb_info {struct jffs2_xattr_ref* xref_dead_list; } ;


 int jffs2_free_xattr_ref (struct jffs2_xattr_ref*) ;

void jffs2_release_xattr_ref(struct jffs2_sb_info *c, struct jffs2_xattr_ref *ref)
{

 struct jffs2_xattr_ref *tmp, **ptmp;

 if (ref->node != (void *)ref)
  return;

 for (tmp=c->xref_dead_list, ptmp=&c->xref_dead_list; tmp; ptmp=&tmp->next, tmp=tmp->next) {
  if (ref == tmp) {
   *ptmp = tmp->next;
   break;
  }
 }
 jffs2_free_xattr_ref(ref);
}
