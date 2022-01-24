#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct xsk_queue {int /*<<< orphan*/  ring; } ;
struct xdp_umem {int /*<<< orphan*/  cq; int /*<<< orphan*/  fq; } ;
struct xdp_sock {int /*<<< orphan*/  umem; int /*<<< orphan*/  tx; int /*<<< orphan*/  rx; int /*<<< orphan*/  state; } ;
struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; int /*<<< orphan*/  vm_page_prot; scalar_t__ vm_pgoff; } ;
struct socket {int /*<<< orphan*/  sk; } ;
struct page {int dummy; } ;
struct file {int dummy; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ PAGE_SHIFT ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ XDP_PGOFF_RX_RING ; 
 scalar_t__ XDP_PGOFF_TX_RING ; 
 scalar_t__ XDP_UMEM_PGOFF_COMPLETION_RING ; 
 scalar_t__ XDP_UMEM_PGOFF_FILL_RING ; 
 void* XSK_READY ; 
 unsigned long FUNC1 (struct page*) ; 
 int FUNC2 (struct vm_area_struct*,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct page* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 struct xdp_sock* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct file *file, struct socket *sock,
		    struct vm_area_struct *vma)
{
	loff_t offset = (loff_t)vma->vm_pgoff << PAGE_SHIFT;
	unsigned long size = vma->vm_end - vma->vm_start;
	struct xdp_sock *xs = FUNC6(sock->sk);
	struct xsk_queue *q = NULL;
	struct xdp_umem *umem;
	unsigned long pfn;
	struct page *qpg;

	if (FUNC0(xs->state) != XSK_READY)
		return -EBUSY;

	if (offset == XDP_PGOFF_RX_RING) {
		q = FUNC0(xs->rx);
	} else if (offset == XDP_PGOFF_TX_RING) {
		q = FUNC0(xs->tx);
	} else {
		umem = FUNC0(xs->umem);
		if (!umem)
			return -EINVAL;

		/* Matches the smp_wmb() in XDP_UMEM_REG */
		FUNC3();
		if (offset == XDP_UMEM_PGOFF_FILL_RING)
			q = FUNC0(umem->fq);
		else if (offset == XDP_UMEM_PGOFF_COMPLETION_RING)
			q = FUNC0(umem->cq);
	}

	if (!q)
		return -EINVAL;

	/* Matches the smp_wmb() in xsk_init_queue */
	FUNC3();
	qpg = FUNC4(q->ring);
	if (size > FUNC1(qpg))
		return -EINVAL;

	pfn = FUNC5(q->ring) >> PAGE_SHIFT;
	return FUNC2(vma, vma->vm_start, pfn,
			       size, vma->vm_page_prot);
}