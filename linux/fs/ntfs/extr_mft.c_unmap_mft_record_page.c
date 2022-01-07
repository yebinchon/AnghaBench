
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ page_ofs; int * page; } ;
typedef TYPE_1__ ntfs_inode ;


 int BUG_ON (int) ;
 int ntfs_unmap_page (int *) ;

__attribute__((used)) static inline void unmap_mft_record_page(ntfs_inode *ni)
{
 BUG_ON(!ni->page);


 ntfs_unmap_page(ni->page);
 ni->page = ((void*)0);
 ni->page_ofs = 0;
 return;
}
