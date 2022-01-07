
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {int prev; } ;
struct nfs_pgio_mirror {TYPE_1__ pg_list; } ;
struct nfs_pageio_descriptor {size_t pg_mirror_count; struct nfs_pgio_mirror* pg_mirrors; } ;
struct nfs_page {scalar_t__ wb_index; } ;
typedef scalar_t__ pgoff_t ;


 int list_empty (TYPE_1__*) ;
 struct nfs_page* nfs_list_entry (int ) ;
 int nfs_pageio_complete (struct nfs_pageio_descriptor*) ;

void nfs_pageio_cond_complete(struct nfs_pageio_descriptor *desc, pgoff_t index)
{
 struct nfs_pgio_mirror *mirror;
 struct nfs_page *prev;
 u32 midx;

 for (midx = 0; midx < desc->pg_mirror_count; midx++) {
  mirror = &desc->pg_mirrors[midx];
  if (!list_empty(&mirror->pg_list)) {
   prev = nfs_list_entry(mirror->pg_list.prev);
   if (index != prev->wb_index + 1) {
    nfs_pageio_complete(desc);
    break;
   }
  }
 }
}
