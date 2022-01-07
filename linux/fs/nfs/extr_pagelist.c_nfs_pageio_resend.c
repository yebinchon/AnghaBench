
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct nfs_pgio_header {int io_start; TYPE_1__* completion_ops; int pages; int dreq; int io_completion; } ;
struct nfs_pageio_descriptor {int pg_error; int pg_dreq; int pg_io_completion; } ;
struct nfs_page {int dummy; } ;
struct TYPE_8__ {int next; } ;
struct TYPE_7__ {int (* error_cleanup ) (TYPE_2__*,int) ;} ;


 int EIO ;
 int LIST_HEAD (TYPE_2__) ;
 int list_empty (TYPE_2__*) ;
 int list_splice_init (int *,TYPE_2__*) ;
 struct nfs_page* nfs_list_entry (int ) ;
 int nfs_pageio_add_request (struct nfs_pageio_descriptor*,struct nfs_page*) ;
 int nfs_pageio_complete (struct nfs_pageio_descriptor*) ;
 int nfs_set_pgio_error (struct nfs_pgio_header*,int,int ) ;
 TYPE_2__ pages ;
 int stub1 (TYPE_2__*,int) ;

int nfs_pageio_resend(struct nfs_pageio_descriptor *desc,
        struct nfs_pgio_header *hdr)
{
 LIST_HEAD(pages);

 desc->pg_io_completion = hdr->io_completion;
 desc->pg_dreq = hdr->dreq;
 list_splice_init(&hdr->pages, &pages);
 while (!list_empty(&pages)) {
  struct nfs_page *req = nfs_list_entry(pages.next);

  if (!nfs_pageio_add_request(desc, req))
   break;
 }
 nfs_pageio_complete(desc);
 if (!list_empty(&pages)) {
  int err = desc->pg_error < 0 ? desc->pg_error : -EIO;
  hdr->completion_ops->error_cleanup(&pages, err);
  nfs_set_pgio_error(hdr, err, hdr->io_start);
  return err;
 }
 return 0;
}
