
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_pageio_descriptor {scalar_t__ pg_error; } ;
struct nfs_page {int dummy; } ;


 int __nfs_pageio_add_request (struct nfs_pageio_descriptor*,struct nfs_page*) ;
 int nfs_do_recoalesce (struct nfs_pageio_descriptor*) ;

__attribute__((used)) static int nfs_pageio_add_request_mirror(struct nfs_pageio_descriptor *desc,
  struct nfs_page *req)
{
 int ret;

 do {
  ret = __nfs_pageio_add_request(desc, req);
  if (ret)
   break;
  if (desc->pg_error < 0)
   break;
  ret = nfs_do_recoalesce(desc);
 } while (ret);

 return ret;
}
