
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_page {int wb_page; } ;


 int nfs_end_page_writeback (struct nfs_page*) ;
 int nfs_inode_remove_request (struct nfs_page*) ;
 int nfs_mapping_set_error (int ,int) ;
 int nfs_release_request (struct nfs_page*) ;
 int nfs_set_pageerror (int ) ;
 int page_file_mapping (int ) ;

__attribute__((used)) static void nfs_write_error(struct nfs_page *req, int error)
{
 nfs_set_pageerror(page_file_mapping(req->wb_page));
 nfs_mapping_set_error(req->wb_page, error);
 nfs_inode_remove_request(req);
 nfs_end_page_writeback(req);
 nfs_release_request(req);
}
