
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {TYPE_5__* tail; TYPE_1__* head; } ;
struct TYPE_10__ {int page_base; int page_len; TYPE_3__* tail; struct page** pages; TYPE_2__* head; } ;
struct rpc_rqst {TYPE_6__ rq_private_buf; TYPE_4__ rq_rcv_buf; } ;
struct page {int dummy; } ;
struct TYPE_11__ {char* iov_base; } ;
struct TYPE_9__ {char* iov_base; } ;
struct TYPE_8__ {char* iov_base; int iov_len; } ;
struct TYPE_7__ {char* iov_base; } ;


 int PAGE_ALIGN (int) ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int flush_dcache_page (struct page*) ;
 char* kmap_atomic (struct page*) ;
 int kunmap_atomic (char*) ;
 int memcpy (char*,char*,int) ;
 int offset_in_page (int) ;
 int trace_xprtrdma_fixup (struct rpc_rqst*,int,int) ;
 int trace_xprtrdma_fixup_pg (struct rpc_rqst*,int,char*,int,int) ;

__attribute__((used)) static unsigned long
rpcrdma_inline_fixup(struct rpc_rqst *rqst, char *srcp, int copy_len, int pad)
{
 unsigned long fixup_copy_count;
 int i, npages, curlen;
 char *destp;
 struct page **ppages;
 int page_base;




 rqst->rq_rcv_buf.head[0].iov_base = srcp;
 rqst->rq_private_buf.head[0].iov_base = srcp;




 curlen = rqst->rq_rcv_buf.head[0].iov_len;
 if (curlen > copy_len)
  curlen = copy_len;
 trace_xprtrdma_fixup(rqst, copy_len, curlen);
 srcp += curlen;
 copy_len -= curlen;

 ppages = rqst->rq_rcv_buf.pages +
  (rqst->rq_rcv_buf.page_base >> PAGE_SHIFT);
 page_base = offset_in_page(rqst->rq_rcv_buf.page_base);
 fixup_copy_count = 0;
 if (copy_len && rqst->rq_rcv_buf.page_len) {
  int pagelist_len;

  pagelist_len = rqst->rq_rcv_buf.page_len;
  if (pagelist_len > copy_len)
   pagelist_len = copy_len;
  npages = PAGE_ALIGN(page_base + pagelist_len) >> PAGE_SHIFT;
  for (i = 0; i < npages; i++) {
   curlen = PAGE_SIZE - page_base;
   if (curlen > pagelist_len)
    curlen = pagelist_len;

   trace_xprtrdma_fixup_pg(rqst, i, srcp,
      copy_len, curlen);
   destp = kmap_atomic(ppages[i]);
   memcpy(destp + page_base, srcp, curlen);
   flush_dcache_page(ppages[i]);
   kunmap_atomic(destp);
   srcp += curlen;
   copy_len -= curlen;
   fixup_copy_count += curlen;
   pagelist_len -= curlen;
   if (!pagelist_len)
    break;
   page_base = 0;
  }







  if (pad)
   srcp -= pad;
 }




 if (copy_len || pad) {
  rqst->rq_rcv_buf.tail[0].iov_base = srcp;
  rqst->rq_private_buf.tail[0].iov_base = srcp;
 }

 return fixup_copy_count;
}
