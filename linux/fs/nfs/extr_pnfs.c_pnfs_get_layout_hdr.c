
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_layout_hdr {int plh_refcount; } ;


 int refcount_inc (int *) ;

void
pnfs_get_layout_hdr(struct pnfs_layout_hdr *lo)
{
 refcount_inc(&lo->plh_refcount);
}
