
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbuf {int l_page; struct lbuf* l_freelist; } ;
struct jfs_log {struct lbuf* lbuf_free; } ;


 int __free_page (int ) ;
 int jfs_info (char*,struct jfs_log*) ;
 int kfree (struct lbuf*) ;

__attribute__((used)) static void lbmLogShutdown(struct jfs_log * log)
{
 struct lbuf *lbuf;

 jfs_info("lbmLogShutdown: log:0x%p", log);

 lbuf = log->lbuf_free;
 while (lbuf) {
  struct lbuf *next = lbuf->l_freelist;
  __free_page(lbuf->l_page);
  kfree(lbuf);
  lbuf = next;
 }
}
