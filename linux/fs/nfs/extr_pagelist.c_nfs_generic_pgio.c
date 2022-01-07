
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct list_head {int next; } ;
struct nfs_pgio_mirror {int pg_count; int pg_base; struct list_head pg_list; } ;
struct nfs_page_array {unsigned int npages; struct page** pagevec; struct page** page_array; } ;
struct nfs_pgio_header {int pages; struct nfs_page_array page_array; } ;
struct nfs_pageio_descriptor {int pg_error; int pg_ioflags; int * pg_rpc_callops; scalar_t__ pg_moreio; int pg_dreq; int pg_inode; } ;
struct nfs_page {struct page* wb_page; } ;
struct nfs_commit_info {int dummy; } ;
typedef int gfp_t ;


 unsigned int ARRAY_SIZE (struct page**) ;
 int EINVAL ;
 int ENOMEM ;
 int FLUSH_COND_STABLE ;
 int GFP_KERNEL ;
 scalar_t__ WARN_ON_ONCE (int) ;
 struct page** kcalloc (unsigned int,int,int ) ;
 int list_empty (struct list_head*) ;
 int nfs_init_cinfo (struct nfs_commit_info*,int ,int ) ;
 struct nfs_page* nfs_list_entry (int ) ;
 int nfs_list_move_request (struct nfs_page*,int *) ;
 unsigned int nfs_page_array_len (int ,int ) ;
 int nfs_pgio_common_ops ;
 struct nfs_pgio_mirror* nfs_pgio_current_mirror (struct nfs_pageio_descriptor*) ;
 int nfs_pgio_error (struct nfs_pgio_header*) ;
 int nfs_pgio_rpcsetup (struct nfs_pgio_header*,int ,int,struct nfs_commit_info*) ;
 scalar_t__ nfs_reqs_to_commit (struct nfs_commit_info*) ;

int nfs_generic_pgio(struct nfs_pageio_descriptor *desc,
       struct nfs_pgio_header *hdr)
{
 struct nfs_pgio_mirror *mirror = nfs_pgio_current_mirror(desc);

 struct nfs_page *req;
 struct page **pages,
    *last_page;
 struct list_head *head = &mirror->pg_list;
 struct nfs_commit_info cinfo;
 struct nfs_page_array *pg_array = &hdr->page_array;
 unsigned int pagecount, pageused;
 gfp_t gfp_flags = GFP_KERNEL;

 pagecount = nfs_page_array_len(mirror->pg_base, mirror->pg_count);
 pg_array->npages = pagecount;

 if (pagecount <= ARRAY_SIZE(pg_array->page_array))
  pg_array->pagevec = pg_array->page_array;
 else {
  pg_array->pagevec = kcalloc(pagecount, sizeof(struct page *), gfp_flags);
  if (!pg_array->pagevec) {
   pg_array->npages = 0;
   nfs_pgio_error(hdr);
   desc->pg_error = -ENOMEM;
   return desc->pg_error;
  }
 }

 nfs_init_cinfo(&cinfo, desc->pg_inode, desc->pg_dreq);
 pages = hdr->page_array.pagevec;
 last_page = ((void*)0);
 pageused = 0;
 while (!list_empty(head)) {
  req = nfs_list_entry(head->next);
  nfs_list_move_request(req, &hdr->pages);

  if (!last_page || last_page != req->wb_page) {
   pageused++;
   if (pageused > pagecount)
    break;
   *pages++ = last_page = req->wb_page;
  }
 }
 if (WARN_ON_ONCE(pageused != pagecount)) {
  nfs_pgio_error(hdr);
  desc->pg_error = -EINVAL;
  return desc->pg_error;
 }

 if ((desc->pg_ioflags & FLUSH_COND_STABLE) &&
     (desc->pg_moreio || nfs_reqs_to_commit(&cinfo)))
  desc->pg_ioflags &= ~FLUSH_COND_STABLE;


 nfs_pgio_rpcsetup(hdr, mirror->pg_count, desc->pg_ioflags, &cinfo);
 desc->pg_rpc_callops = &nfs_pgio_common_ops;
 return 0;
}
