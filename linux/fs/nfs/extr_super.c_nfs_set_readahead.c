
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backing_dev_info {unsigned long io_pages; int ra_pages; } ;


 int VM_READAHEAD_PAGES ;

__attribute__((used)) static void nfs_set_readahead(struct backing_dev_info *bdi,
         unsigned long iomax_pages)
{
 bdi->ra_pages = VM_READAHEAD_PAGES;
 bdi->io_pages = iomax_pages;
}
