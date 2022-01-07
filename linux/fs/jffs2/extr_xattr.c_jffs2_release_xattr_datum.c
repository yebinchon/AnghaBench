
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jffs2_xattr_datum {void* node; int xindex; int refcnt; } ;
struct jffs2_sb_info {int dummy; } ;


 scalar_t__ atomic_read (int *) ;
 int jffs2_free_xattr_datum (struct jffs2_xattr_datum*) ;
 int list_del (int *) ;

void jffs2_release_xattr_datum(struct jffs2_sb_info *c, struct jffs2_xattr_datum *xd)
{

 if (atomic_read(&xd->refcnt) || xd->node != (void *)xd)
  return;

 list_del(&xd->xindex);
 jffs2_free_xattr_datum(xd);
}
