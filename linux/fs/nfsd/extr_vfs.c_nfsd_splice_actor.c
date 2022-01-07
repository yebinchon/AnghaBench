
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t page_len; int page_base; } ;
struct svc_rqst {TYPE_2__ rq_res; struct page** rq_next_page; } ;
struct TYPE_3__ {struct svc_rqst* data; } ;
struct splice_desc {size_t len; TYPE_1__ u; } ;
struct pipe_inode_info {int dummy; } ;
struct pipe_buffer {int offset; struct page* page; } ;
struct page {int dummy; } ;


 int get_page (struct page*) ;
 int put_page (struct page*) ;

__attribute__((used)) static int
nfsd_splice_actor(struct pipe_inode_info *pipe, struct pipe_buffer *buf,
    struct splice_desc *sd)
{
 struct svc_rqst *rqstp = sd->u.data;
 struct page **pp = rqstp->rq_next_page;
 struct page *page = buf->page;
 size_t size;

 size = sd->len;

 if (rqstp->rq_res.page_len == 0) {
  get_page(page);
  put_page(*rqstp->rq_next_page);
  *(rqstp->rq_next_page++) = page;
  rqstp->rq_res.page_base = buf->offset;
  rqstp->rq_res.page_len = size;
 } else if (page != pp[-1]) {
  get_page(page);
  if (*rqstp->rq_next_page)
   put_page(*rqstp->rq_next_page);
  *(rqstp->rq_next_page++) = page;
  rqstp->rq_res.page_len += size;
 } else
  rqstp->rq_res.page_len += size;

 return size;
}
