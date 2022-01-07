
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int next; } ;
struct nfs_pgio_mirror {int pg_count; TYPE_1__ pg_list; } ;
struct nfs_pgio_header {void (* release ) (struct nfs_pgio_header*) ;int pgio_mirror_idx; TYPE_2__* completion_ops; int dreq; int io_completion; int good_bytes; int req; int io_start; int cred; int inode; } ;
struct nfs_pageio_descriptor {int pg_mirror_idx; TYPE_2__* pg_completion_ops; int pg_dreq; int pg_io_completion; int pg_inode; } ;
struct TYPE_6__ {int cred; } ;
struct TYPE_5__ {int (* init_hdr ) (struct nfs_pgio_header*) ;} ;


 int nfs_list_entry (int ) ;
 struct nfs_pgio_mirror* nfs_pgio_current_mirror (struct nfs_pageio_descriptor*) ;
 TYPE_3__* nfs_req_openctx (int ) ;
 int req_offset (int ) ;
 int stub1 (struct nfs_pgio_header*) ;

void nfs_pgheader_init(struct nfs_pageio_descriptor *desc,
         struct nfs_pgio_header *hdr,
         void (*release)(struct nfs_pgio_header *hdr))
{
 struct nfs_pgio_mirror *mirror = nfs_pgio_current_mirror(desc);


 hdr->req = nfs_list_entry(mirror->pg_list.next);
 hdr->inode = desc->pg_inode;
 hdr->cred = nfs_req_openctx(hdr->req)->cred;
 hdr->io_start = req_offset(hdr->req);
 hdr->good_bytes = mirror->pg_count;
 hdr->io_completion = desc->pg_io_completion;
 hdr->dreq = desc->pg_dreq;
 hdr->release = release;
 hdr->completion_ops = desc->pg_completion_ops;
 if (hdr->completion_ops->init_hdr)
  hdr->completion_ops->init_hdr(hdr);

 hdr->pgio_mirror_idx = desc->pg_mirror_idx;
}
