
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct page {int dummy; } ;


 unsigned int PAGE_SIZE ;
 unsigned int offset_in_page (void*) ;
 unsigned int page_to_phys (struct page*) ;
 struct scatterlist* sg_next (struct scatterlist*) ;
 int sg_set_page (struct scatterlist*,struct page*,unsigned int,unsigned int) ;
 struct page* virt_to_page (void*) ;

__attribute__((used)) static int setup_sgl_buf(struct scatterlist *sgl, void *buf,
  int nents, unsigned int len)
{
 int n;
 unsigned int l;
 unsigned int off;
 struct page *page;

 if (!nents)
  return 0;

 if (!len)
  return 0;

 n = 0;
 page = virt_to_page(buf);
 off = offset_in_page(buf);
 l = 0;

 while (len >= l + PAGE_SIZE - off) {
  struct page *npage;

  l += PAGE_SIZE;
  buf += PAGE_SIZE;
  npage = virt_to_page(buf);
  if (page_to_phys(page) != page_to_phys(npage) - l) {
   sg_set_page(sgl, page, l - off, off);
   sgl = sg_next(sgl);
   if (++n == nents || sgl == ((void*)0))
    return n;
   page = npage;
   len -= l - off;
   l = off = 0;
  }
 }
 sg_set_page(sgl, page, len, off);
 return n + 1;
}
