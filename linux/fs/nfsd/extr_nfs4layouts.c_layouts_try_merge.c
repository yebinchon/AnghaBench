
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_layout_seg {scalar_t__ iomode; scalar_t__ offset; } ;


 scalar_t__ layout_end (struct nfsd4_layout_seg*) ;
 int layout_update_len (struct nfsd4_layout_seg*,int ) ;
 int max (scalar_t__,scalar_t__) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;

__attribute__((used)) static bool
layouts_try_merge(struct nfsd4_layout_seg *lo, struct nfsd4_layout_seg *new)
{
 if (lo->iomode != new->iomode)
  return 0;
 if (layout_end(new) < lo->offset)
  return 0;
 if (layout_end(lo) < new->offset)
  return 0;

 lo->offset = min(lo->offset, new->offset);
 layout_update_len(lo, max(layout_end(lo), layout_end(new)));
 return 1;
}
