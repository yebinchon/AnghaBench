
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ count; scalar_t__ offset; } ;
struct nfs_pgio_header {TYPE_2__ args; TYPE_1__* inode; int pages; } ;
struct TYPE_3__ {int i_mapping; } ;


 int filemap_fdatawrite_range (int ,scalar_t__,scalar_t__) ;
 int nfs_async_write_error (int *,int ) ;

__attribute__((used)) static void nfs_async_write_reschedule_io(struct nfs_pgio_header *hdr)
{
 nfs_async_write_error(&hdr->pages, 0);
 filemap_fdatawrite_range(hdr->inode->i_mapping, hdr->args.offset,
   hdr->args.offset + hdr->args.count - 1);
}
