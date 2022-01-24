#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct iov_iter {int dummy; } ;
struct TYPE_7__ {int in_pages; int out_pages; TYPE_2__* out_args; TYPE_1__* in_args; } ;
struct fuse_args_pages {unsigned int num_pages; TYPE_3__ args; TYPE_4__* descs; int /*<<< orphan*/ * pages; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_8__ {size_t offset; scalar_t__ length; } ;
struct TYPE_6__ {void* value; } ;
struct TYPE_5__ {void* value; } ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 size_t FUNC0 (struct iov_iter*,size_t) ; 
 unsigned long FUNC1 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,size_t,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct iov_iter*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct iov_iter*,int /*<<< orphan*/ *,size_t,unsigned int,size_t*) ; 
 scalar_t__ FUNC5 (struct iov_iter*) ; 

__attribute__((used)) static int FUNC6(struct fuse_args_pages *ap, struct iov_iter *ii,
			       size_t *nbytesp, int write,
			       unsigned int max_pages)
{
	size_t nbytes = 0;  /* # bytes already packed in req */
	ssize_t ret = 0;

	/* Special case for kernel I/O: can copy directly into the buffer */
	if (FUNC5(ii)) {
		unsigned long user_addr = FUNC1(ii);
		size_t frag_size = FUNC0(ii, *nbytesp);

		if (write)
			ap->args.in_args[1].value = (void *) user_addr;
		else
			ap->args.out_args[0].value = (void *) user_addr;

		FUNC3(ii, frag_size);
		*nbytesp = frag_size;
		return 0;
	}

	while (nbytes < *nbytesp && ap->num_pages < max_pages) {
		unsigned npages;
		size_t start;
		ret = FUNC4(ii, &ap->pages[ap->num_pages],
					*nbytesp - nbytes,
					max_pages - ap->num_pages,
					&start);
		if (ret < 0)
			break;

		FUNC3(ii, ret);
		nbytes += ret;

		ret += start;
		npages = (ret + PAGE_SIZE - 1) / PAGE_SIZE;

		ap->descs[ap->num_pages].offset = start;
		FUNC2(ap->descs, ap->num_pages, npages);

		ap->num_pages += npages;
		ap->descs[ap->num_pages - 1].length -=
			(PAGE_SIZE - ret) & (PAGE_SIZE - 1);
	}

	if (write)
		ap->args.in_pages = 1;
	else
		ap->args.out_pages = 1;

	*nbytesp = nbytes;

	return ret < 0 ? ret : 0;
}