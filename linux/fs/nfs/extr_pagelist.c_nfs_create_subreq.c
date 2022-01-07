
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_page {int wb_nio; int wb_index; int wb_page; int wb_lock_context; } ;


 int IS_ERR (struct nfs_page*) ;
 struct nfs_page* __nfs_create_request (int ,int ,unsigned int,unsigned int,unsigned int) ;
 int nfs_lock_request (struct nfs_page*) ;
 int nfs_page_group_init (struct nfs_page*,struct nfs_page*) ;

__attribute__((used)) static struct nfs_page *
nfs_create_subreq(struct nfs_page *req, struct nfs_page *last,
    unsigned int pgbase, unsigned int offset,
    unsigned int count)
{
 struct nfs_page *ret;

 ret = __nfs_create_request(req->wb_lock_context, req->wb_page,
   pgbase, offset, count);
 if (!IS_ERR(ret)) {
  nfs_lock_request(ret);
  ret->wb_index = req->wb_index;
  nfs_page_group_init(ret, last);
  ret->wb_nio = req->wb_nio;
 }
 return ret;
}
