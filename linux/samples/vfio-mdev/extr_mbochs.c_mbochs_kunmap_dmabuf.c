
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_buf {int dummy; } ;


 int kunmap (void*) ;

__attribute__((used)) static void mbochs_kunmap_dmabuf(struct dma_buf *buf, unsigned long page_num,
     void *vaddr)
{
 kunmap(vaddr);
}
