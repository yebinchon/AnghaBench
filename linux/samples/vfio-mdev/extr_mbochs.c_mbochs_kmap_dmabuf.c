
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct mbochs_dmabuf {struct page** pages; } ;
struct dma_buf {struct mbochs_dmabuf* priv; } ;


 void* kmap (struct page*) ;

__attribute__((used)) static void *mbochs_kmap_dmabuf(struct dma_buf *buf, unsigned long page_num)
{
 struct mbochs_dmabuf *dmabuf = buf->priv;
 struct page *page = dmabuf->pages[page_num];

 return kmap(page);
}
