
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_rw_ops {struct nfs_pgio_header* (* rw_alloc_header ) () ;} ;
struct nfs_pgio_header {struct nfs_rw_ops const* rw_ops; int pages; } ;


 int INIT_LIST_HEAD (int *) ;
 struct nfs_pgio_header* stub1 () ;

struct nfs_pgio_header *nfs_pgio_header_alloc(const struct nfs_rw_ops *ops)
{
 struct nfs_pgio_header *hdr = ops->rw_alloc_header();

 if (hdr) {
  INIT_LIST_HEAD(&hdr->pages);
  hdr->rw_ops = ops;
 }
 return hdr;
}
