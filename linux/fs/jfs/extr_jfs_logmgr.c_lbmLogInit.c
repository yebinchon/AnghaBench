
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
struct page {int dummy; } ;
struct lbuf {char* l_ldata; struct lbuf* l_freelist; int l_ioevent; struct jfs_log* l_log; struct page* l_page; scalar_t__ l_offset; } ;
struct jfs_log {struct lbuf* lbuf_free; int free_wait; int * wqueue; int * bp; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int LOGPAGES ;
 scalar_t__ LOGPSIZE ;
 scalar_t__ PAGE_SIZE ;
 int __GFP_ZERO ;
 int __free_page (struct page*) ;
 struct page* alloc_page (int) ;
 int get_page (struct page*) ;
 int init_waitqueue_head (int *) ;
 int jfs_info (char*,struct jfs_log*) ;
 struct lbuf* kmalloc (int,int) ;
 int lbmLogShutdown (struct jfs_log*) ;
 char* page_address (struct page*) ;

__attribute__((used)) static int lbmLogInit(struct jfs_log * log)
{
 int i;
 struct lbuf *lbuf;

 jfs_info("lbmLogInit: log:0x%p", log);


 log->bp = ((void*)0);


 log->wqueue = ((void*)0);
 init_waitqueue_head(&log->free_wait);

 log->lbuf_free = ((void*)0);

 for (i = 0; i < LOGPAGES;) {
  char *buffer;
  uint offset;
  struct page *page = alloc_page(GFP_KERNEL | __GFP_ZERO);

  if (!page)
   goto error;
  buffer = page_address(page);
  for (offset = 0; offset < PAGE_SIZE; offset += LOGPSIZE) {
   lbuf = kmalloc(sizeof(struct lbuf), GFP_KERNEL);
   if (lbuf == ((void*)0)) {
    if (offset == 0)
     __free_page(page);
    goto error;
   }
   if (offset)
    get_page(page);
   lbuf->l_offset = offset;
   lbuf->l_ldata = buffer + offset;
   lbuf->l_page = page;
   lbuf->l_log = log;
   init_waitqueue_head(&lbuf->l_ioevent);

   lbuf->l_freelist = log->lbuf_free;
   log->lbuf_free = lbuf;
   i++;
  }
 }

 return (0);

      error:
 lbmLogShutdown(log);
 return -ENOMEM;
}
