
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_pageio_descriptor {int dummy; } ;
struct nfs_page {int dummy; } ;


 int PAGE_SIZE ;
 int is_aligned_req (struct nfs_pageio_descriptor*,struct nfs_page*,int ,int) ;
 size_t pnfs_generic_pg_test (struct nfs_pageio_descriptor*,struct nfs_page*,struct nfs_page*) ;

__attribute__((used)) static size_t
bl_pg_test_write(struct nfs_pageio_descriptor *pgio, struct nfs_page *prev,
   struct nfs_page *req)
{
 if (!is_aligned_req(pgio, req, PAGE_SIZE, 1))
  return 0;
 return pnfs_generic_pg_test(pgio, prev, req);
}
