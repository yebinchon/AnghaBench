
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_layout_seg {scalar_t__ iomode; scalar_t__ offset; } ;
struct nfs4_layout {struct nfsd4_layout_seg lo_seg; } ;


 scalar_t__ IOMODE_ANY ;
 scalar_t__ layout_end (struct nfsd4_layout_seg*) ;

__attribute__((used)) static bool
layouts_overlapping(struct nfs4_layout *lo, struct nfsd4_layout_seg *s)
{
 if (s->iomode != IOMODE_ANY && s->iomode != lo->lo_seg.iomode)
  return 0;
 if (layout_end(&lo->lo_seg) <= s->offset)
  return 0;
 if (layout_end(s) <= lo->lo_seg.offset)
  return 0;
 return 1;
}
