
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_4__ {int count; int mrec_lock; int mft_no; struct page* page; } ;
typedef TYPE_1__ ntfs_inode ;


 int BUG_ON (int) ;
 int atomic_dec (int *) ;
 int mutex_unlock (int *) ;
 int ntfs_debug (char*,int ) ;
 int unmap_mft_record_page (TYPE_1__*) ;

void unmap_mft_record(ntfs_inode *ni)
{
 struct page *page = ni->page;

 BUG_ON(!page);

 ntfs_debug("Entering for mft_no 0x%lx.", ni->mft_no);

 unmap_mft_record_page(ni);
 mutex_unlock(&ni->mrec_lock);
 atomic_dec(&ni->count);






 return;
}
