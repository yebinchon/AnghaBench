
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct xdp_frame {unsigned int len; unsigned int metasize; TYPE_1__ mem; scalar_t__ headroom; void* data; } ;
struct xdp_buff {unsigned int data; unsigned int data_meta; int data_end; } ;
struct page {int dummy; } ;


 int MEM_TYPE_PAGE_ORDER0 ;
 int PAGE_SIZE ;
 struct page* dev_alloc_page () ;
 int memcpy (void*,void*,unsigned int) ;
 int memset (struct xdp_frame*,int ,int) ;
 void* page_to_virt (struct page*) ;
 scalar_t__ xdp_data_meta_unsupported (struct xdp_buff*) ;
 int xdp_return_buff (struct xdp_buff*) ;

struct xdp_frame *xdp_convert_zc_to_xdp_frame(struct xdp_buff *xdp)
{
 unsigned int metasize, totsize;
 void *addr, *data_to_copy;
 struct xdp_frame *xdpf;
 struct page *page;


 metasize = xdp_data_meta_unsupported(xdp) ? 0 :
     xdp->data - xdp->data_meta;
 totsize = xdp->data_end - xdp->data + metasize;

 if (sizeof(*xdpf) + totsize > PAGE_SIZE)
  return ((void*)0);

 page = dev_alloc_page();
 if (!page)
  return ((void*)0);

 addr = page_to_virt(page);
 xdpf = addr;
 memset(xdpf, 0, sizeof(*xdpf));

 addr += sizeof(*xdpf);
 data_to_copy = metasize ? xdp->data_meta : xdp->data;
 memcpy(addr, data_to_copy, totsize);

 xdpf->data = addr + metasize;
 xdpf->len = totsize - metasize;
 xdpf->headroom = 0;
 xdpf->metasize = metasize;
 xdpf->mem.type = MEM_TYPE_PAGE_ORDER0;

 xdp_return_buff(xdp);
 return xdpf;
}
