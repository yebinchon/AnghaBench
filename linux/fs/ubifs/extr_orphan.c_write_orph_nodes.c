
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {scalar_t__ cmt_orphans; int ohead_lnum; int orph_last; } ;


 int ubifs_leb_unmap (struct ubifs_info*,int) ;
 int write_orph_node (struct ubifs_info*,int) ;

__attribute__((used)) static int write_orph_nodes(struct ubifs_info *c, int atomic)
{
 int err;

 while (c->cmt_orphans > 0) {
  err = write_orph_node(c, atomic);
  if (err)
   return err;
 }
 if (atomic) {
  int lnum;


  for (lnum = c->ohead_lnum + 1; lnum <= c->orph_last; lnum++) {
   err = ubifs_leb_unmap(c, lnum);
   if (err)
    return err;
  }
 }
 return 0;
}
