
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsk_queue {int ring; } ;
struct xdp_umem {int cq; int fq; } ;
struct xdp_sock {int umem; int tx; int rx; int state; } ;
struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; int vm_page_prot; scalar_t__ vm_pgoff; } ;
struct socket {int sk; } ;
struct page {int dummy; } ;
struct file {int dummy; } ;
typedef scalar_t__ loff_t ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ PAGE_SHIFT ;
 void* READ_ONCE (int ) ;
 scalar_t__ XDP_PGOFF_RX_RING ;
 scalar_t__ XDP_PGOFF_TX_RING ;
 scalar_t__ XDP_UMEM_PGOFF_COMPLETION_RING ;
 scalar_t__ XDP_UMEM_PGOFF_FILL_RING ;
 void* XSK_READY ;
 unsigned long page_size (struct page*) ;
 int remap_pfn_range (struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int ) ;
 int smp_rmb () ;
 struct page* virt_to_head_page (int ) ;
 scalar_t__ virt_to_phys (int ) ;
 struct xdp_sock* xdp_sk (int ) ;

__attribute__((used)) static int xsk_mmap(struct file *file, struct socket *sock,
      struct vm_area_struct *vma)
{
 loff_t offset = (loff_t)vma->vm_pgoff << PAGE_SHIFT;
 unsigned long size = vma->vm_end - vma->vm_start;
 struct xdp_sock *xs = xdp_sk(sock->sk);
 struct xsk_queue *q = ((void*)0);
 struct xdp_umem *umem;
 unsigned long pfn;
 struct page *qpg;

 if (READ_ONCE(xs->state) != XSK_READY)
  return -EBUSY;

 if (offset == XDP_PGOFF_RX_RING) {
  q = READ_ONCE(xs->rx);
 } else if (offset == XDP_PGOFF_TX_RING) {
  q = READ_ONCE(xs->tx);
 } else {
  umem = READ_ONCE(xs->umem);
  if (!umem)
   return -EINVAL;


  smp_rmb();
  if (offset == XDP_UMEM_PGOFF_FILL_RING)
   q = READ_ONCE(umem->fq);
  else if (offset == XDP_UMEM_PGOFF_COMPLETION_RING)
   q = READ_ONCE(umem->cq);
 }

 if (!q)
  return -EINVAL;


 smp_rmb();
 qpg = virt_to_head_page(q->ring);
 if (size > page_size(qpg))
  return -EINVAL;

 pfn = virt_to_phys(q->ring) >> PAGE_SHIFT;
 return remap_pfn_range(vma, vma->vm_start, pfn,
          size, vma->vm_page_prot);
}
