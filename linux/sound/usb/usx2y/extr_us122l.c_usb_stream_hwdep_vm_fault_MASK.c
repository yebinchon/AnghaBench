#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_fault_t ;
struct vm_fault {unsigned long pgoff; struct page* page; TYPE_1__* vma; } ;
struct usb_stream {int /*<<< orphan*/  write_size; int /*<<< orphan*/  read_size; } ;
struct TYPE_4__ {void* write_page; struct usb_stream* s; } ;
struct us122l {int /*<<< orphan*/  mutex; TYPE_2__ sk; } ;
struct page {int dummy; } ;
struct TYPE_3__ {struct us122l* vm_private_data; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long PAGE_SHIFT ; 
 int /*<<< orphan*/  VM_FAULT_SIGBUS ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct page* FUNC4 (void*) ; 

__attribute__((used)) static vm_fault_t FUNC5(struct vm_fault *vmf)
{
	unsigned long offset;
	struct page *page;
	void *vaddr;
	struct us122l *us122l = vmf->vma->vm_private_data;
	struct usb_stream *s;

	FUNC2(&us122l->mutex);
	s = us122l->sk.s;
	if (!s)
		goto unlock;

	offset = vmf->pgoff << PAGE_SHIFT;
	if (offset < FUNC0(s->read_size))
		vaddr = (char *)s + offset;
	else {
		offset -= FUNC0(s->read_size);
		if (offset >= FUNC0(s->write_size))
			goto unlock;

		vaddr = us122l->sk.write_page + offset;
	}
	page = FUNC4(vaddr);

	FUNC1(page);
	FUNC3(&us122l->mutex);

	vmf->page = page;

	return 0;
unlock:
	FUNC3(&us122l->mutex);
	return VM_FAULT_SIGBUS;
}