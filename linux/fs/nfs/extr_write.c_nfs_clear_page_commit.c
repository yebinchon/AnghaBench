
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_4__ {int wb; } ;
struct TYPE_3__ {int host; } ;


 int NR_UNSTABLE_NFS ;
 int WB_RECLAIMABLE ;
 int dec_node_page_state (struct page*,int ) ;
 int dec_wb_stat (int *,int ) ;
 TYPE_2__* inode_to_bdi (int ) ;
 TYPE_1__* page_file_mapping (struct page*) ;

__attribute__((used)) static void
nfs_clear_page_commit(struct page *page)
{
 dec_node_page_state(page, NR_UNSTABLE_NFS);
 dec_wb_stat(&inode_to_bdi(page_file_mapping(page)->host)->wb,
      WB_RECLAIMABLE);
}
