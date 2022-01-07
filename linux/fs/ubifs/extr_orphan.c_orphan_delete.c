
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_orphan {int del; int inum; struct ubifs_orphan* dnext; scalar_t__ cmt; } ;
struct ubifs_info {struct ubifs_orphan* orph_dnext; } ;


 int __orphan_drop (struct ubifs_info*,struct ubifs_orphan*) ;
 int dbg_gen (char*,int ) ;

__attribute__((used)) static void orphan_delete(struct ubifs_info *c, struct ubifs_orphan *orph)
{
 if (orph->del) {
  dbg_gen("deleted twice ino %lu", orph->inum);
  return;
 }

 if (orph->cmt) {
  orph->del = 1;
  orph->dnext = c->orph_dnext;
  c->orph_dnext = orph;
  dbg_gen("delete later ino %lu", orph->inum);
  return;
 }

 __orphan_drop(c, orph);
}
