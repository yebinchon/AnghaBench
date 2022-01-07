
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct big_key_buf {int nr_pages; scalar_t__* pages; scalar_t__ virt; } ;


 int PAGE_SIZE ;
 int __free_page (scalar_t__) ;
 int kfree (struct big_key_buf*) ;
 int memset (scalar_t__,int ,int) ;
 int vunmap (scalar_t__) ;

__attribute__((used)) static void big_key_free_buffer(struct big_key_buf *buf)
{
 unsigned int i;

 if (buf->virt) {
  memset(buf->virt, 0, buf->nr_pages * PAGE_SIZE);
  vunmap(buf->virt);
 }

 for (i = 0; i < buf->nr_pages; i++)
  if (buf->pages[i])
   __free_page(buf->pages[i]);

 kfree(buf);
}
