#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vm_area_struct {unsigned long vm_end; unsigned long vm_start; int /*<<< orphan*/ * vm_ops; scalar_t__ vm_pgoff; } ;
struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;
struct page {int dummy; } ;
struct packet_ring_buffer {unsigned long pg_vec_len; unsigned long pg_vec_pages; TYPE_1__* pg_vec; } ;
struct packet_sock {int /*<<< orphan*/  pg_vec_lock; int /*<<< orphan*/  mapped; struct packet_ring_buffer tx_ring; struct packet_ring_buffer rx_ring; } ;
struct file {int dummy; } ;
struct TYPE_2__ {void* buffer; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned long PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  packet_mmap_ops ; 
 struct page* FUNC3 (void*) ; 
 struct packet_sock* FUNC4 (struct sock*) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (struct vm_area_struct*,unsigned long,struct page*) ; 

__attribute__((used)) static int FUNC7(struct file *file, struct socket *sock,
		struct vm_area_struct *vma)
{
	struct sock *sk = sock->sk;
	struct packet_sock *po = FUNC4(sk);
	unsigned long size, expected_size;
	struct packet_ring_buffer *rb;
	unsigned long start;
	int err = -EINVAL;
	int i;

	if (vma->vm_pgoff)
		return -EINVAL;

	FUNC1(&po->pg_vec_lock);

	expected_size = 0;
	for (rb = &po->rx_ring; rb <= &po->tx_ring; rb++) {
		if (rb->pg_vec) {
			expected_size += rb->pg_vec_len
						* rb->pg_vec_pages
						* PAGE_SIZE;
		}
	}

	if (expected_size == 0)
		goto out;

	size = vma->vm_end - vma->vm_start;
	if (size != expected_size)
		goto out;

	start = vma->vm_start;
	for (rb = &po->rx_ring; rb <= &po->tx_ring; rb++) {
		if (rb->pg_vec == NULL)
			continue;

		for (i = 0; i < rb->pg_vec_len; i++) {
			struct page *page;
			void *kaddr = rb->pg_vec[i].buffer;
			int pg_num;

			for (pg_num = 0; pg_num < rb->pg_vec_pages; pg_num++) {
				page = FUNC3(kaddr);
				err = FUNC6(vma, start, page);
				if (FUNC5(err))
					goto out;
				start += PAGE_SIZE;
				kaddr += PAGE_SIZE;
			}
		}
	}

	FUNC0(&po->mapped);
	vma->vm_ops = &packet_mmap_ops;
	err = 0;

out:
	FUNC2(&po->pg_vec_lock);
	return err;
}