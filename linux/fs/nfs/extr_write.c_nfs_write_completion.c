
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int verifier; } ;
struct TYPE_4__ {int next; } ;
struct nfs_pgio_header {unsigned long good_bytes; int (* release ) (struct nfs_pgio_header*) ;int io_completion; int pgio_mirror_idx; int lseg; TYPE_1__ verf; int error; int flags; TYPE_2__ pages; int inode; } ;
struct nfs_page {int wb_verf; scalar_t__ wb_nio; int wb_page; scalar_t__ wb_bytes; } ;
struct nfs_commit_info {int dummy; } ;


 int NFS_IOHDR_ERROR ;
 int NFS_IOHDR_REDO ;
 int list_empty (TYPE_2__*) ;
 int memcpy (int *,int *,int) ;
 int nfs_end_page_writeback (struct nfs_page*) ;
 int nfs_init_cinfo_from_inode (struct nfs_commit_info*,int ) ;
 int nfs_inode_remove_request (struct nfs_page*) ;
 int nfs_io_completion_put (int ) ;
 struct nfs_page* nfs_list_entry (int ) ;
 int nfs_list_remove_request (struct nfs_page*) ;
 int nfs_mapping_set_error (int ,int ) ;
 int nfs_mark_request_commit (struct nfs_page*,int ,struct nfs_commit_info*,int ) ;
 int nfs_release_request (struct nfs_page*) ;
 int nfs_set_pageerror (int ) ;
 scalar_t__ nfs_write_need_commit (struct nfs_pgio_header*) ;
 int page_file_mapping (int ) ;
 int stub1 (struct nfs_pgio_header*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void nfs_write_completion(struct nfs_pgio_header *hdr)
{
 struct nfs_commit_info cinfo;
 unsigned long bytes = 0;

 if (test_bit(NFS_IOHDR_REDO, &hdr->flags))
  goto out;
 nfs_init_cinfo_from_inode(&cinfo, hdr->inode);
 while (!list_empty(&hdr->pages)) {
  struct nfs_page *req = nfs_list_entry(hdr->pages.next);

  bytes += req->wb_bytes;
  nfs_list_remove_request(req);
  if (test_bit(NFS_IOHDR_ERROR, &hdr->flags) &&
      (hdr->good_bytes < bytes)) {
   nfs_set_pageerror(page_file_mapping(req->wb_page));
   nfs_mapping_set_error(req->wb_page, hdr->error);
   goto remove_req;
  }
  if (nfs_write_need_commit(hdr)) {

   req->wb_nio = 0;
   memcpy(&req->wb_verf, &hdr->verf.verifier, sizeof(req->wb_verf));
   nfs_mark_request_commit(req, hdr->lseg, &cinfo,
    hdr->pgio_mirror_idx);
   goto next;
  }
remove_req:
  nfs_inode_remove_request(req);
next:
  nfs_end_page_writeback(req);
  nfs_release_request(req);
 }
out:
 nfs_io_completion_put(hdr->io_completion);
 hdr->release(hdr);
}
