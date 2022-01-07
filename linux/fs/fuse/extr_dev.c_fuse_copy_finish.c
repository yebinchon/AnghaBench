
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_buffer {scalar_t__ len; } ;
struct fuse_copy_state {int * pg; scalar_t__ write; struct pipe_buffer* currbuf; scalar_t__ len; } ;


 scalar_t__ PAGE_SIZE ;
 int flush_dcache_page (int *) ;
 int put_page (int *) ;
 int set_page_dirty_lock (int *) ;

__attribute__((used)) static void fuse_copy_finish(struct fuse_copy_state *cs)
{
 if (cs->currbuf) {
  struct pipe_buffer *buf = cs->currbuf;

  if (cs->write)
   buf->len = PAGE_SIZE - cs->len;
  cs->currbuf = ((void*)0);
 } else if (cs->pg) {
  if (cs->write) {
   flush_dcache_page(cs->pg);
   set_page_dirty_lock(cs->pg);
  }
  put_page(cs->pg);
 }
 cs->pg = ((void*)0);
}
