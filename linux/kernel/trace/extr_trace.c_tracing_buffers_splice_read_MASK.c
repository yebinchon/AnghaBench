#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct trace_iterator {TYPE_3__* tr; int /*<<< orphan*/  cpu_file; TYPE_2__* trace_buffer; scalar_t__ snapshot; } ;
struct splice_pipe_desc {int nr_pages_max; int nr_pages; struct partial_page* partial; struct page** pages; int /*<<< orphan*/  spd_release; int /*<<< orphan*/ * ops; } ;
struct pipe_inode_info {int dummy; } ;
struct partial_page {int len; unsigned long private; scalar_t__ offset; } ;
struct page {int dummy; } ;
struct ftrace_buffer_info {struct trace_iterator iter; } ;
struct file {int f_flags; struct ftrace_buffer_info* private_data; } ;
struct buffer_ref {int /*<<< orphan*/ * page; int /*<<< orphan*/  cpu; int /*<<< orphan*/  buffer; int /*<<< orphan*/  refcount; } ;
typedef  int ssize_t ;
typedef  int loff_t ;
struct TYPE_6__ {int /*<<< orphan*/  buffer_percent; TYPE_1__* current_trace; } ;
struct TYPE_5__ {int /*<<< orphan*/  buffer; } ;
struct TYPE_4__ {scalar_t__ use_max_tr; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int O_NONBLOCK ; 
 size_t PAGE_MASK ; 
 int PAGE_SIZE ; 
 int PIPE_DEF_BUFFERS ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned int SPLICE_F_NONBLOCK ; 
 int /*<<< orphan*/  buffer_pipe_buf_ops ; 
 int /*<<< orphan*/  buffer_spd_release ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_ref*) ; 
 struct buffer_ref* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (struct pipe_inode_info*,struct splice_pipe_desc*) ; 
 int /*<<< orphan*/  FUNC10 (struct splice_pipe_desc*) ; 
 int FUNC11 (struct pipe_inode_info*,struct splice_pipe_desc*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 struct page* FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (struct trace_iterator*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC16(struct file *file, loff_t *ppos,
			    struct pipe_inode_info *pipe, size_t len,
			    unsigned int flags)
{
	struct ftrace_buffer_info *info = file->private_data;
	struct trace_iterator *iter = &info->iter;
	struct partial_page partial_def[PIPE_DEF_BUFFERS];
	struct page *pages_def[PIPE_DEF_BUFFERS];
	struct splice_pipe_desc spd = {
		.pages		= pages_def,
		.partial	= partial_def,
		.nr_pages_max	= PIPE_DEF_BUFFERS,
		.ops		= &buffer_pipe_buf_ops,
		.spd_release	= buffer_spd_release,
	};
	struct buffer_ref *ref;
	int entries, i;
	ssize_t ret = 0;

#ifdef CONFIG_TRACER_MAX_TRACE
	if (iter->snapshot && iter->tr->current_trace->use_max_tr)
		return -EBUSY;
#endif

	if (*ppos & (PAGE_SIZE - 1))
		return -EINVAL;

	if (len & (PAGE_SIZE - 1)) {
		if (len < PAGE_SIZE)
			return -EINVAL;
		len &= PAGE_MASK;
	}

	if (FUNC9(pipe, &spd))
		return -ENOMEM;

 again:
	FUNC12(iter->cpu_file);
	entries = FUNC6(iter->trace_buffer->buffer, iter->cpu_file);

	for (i = 0; i < spd.nr_pages_max && len && entries; i++, len -= PAGE_SIZE) {
		struct page *page;
		int r;

		ref = FUNC3(sizeof(*ref), GFP_KERNEL);
		if (!ref) {
			ret = -ENOMEM;
			break;
		}

		FUNC4(&ref->refcount, 1);
		ref->buffer = iter->trace_buffer->buffer;
		ref->page = FUNC5(ref->buffer, iter->cpu_file);
		if (FUNC0(ref->page)) {
			ret = FUNC1(ref->page);
			ref->page = NULL;
			FUNC2(ref);
			break;
		}
		ref->cpu = iter->cpu_file;

		r = FUNC8(ref->buffer, &ref->page,
					  len, iter->cpu_file, 1);
		if (r < 0) {
			FUNC7(ref->buffer, ref->cpu,
						   ref->page);
			FUNC2(ref);
			break;
		}

		page = FUNC14(ref->page);

		spd.pages[i] = page;
		spd.partial[i].len = PAGE_SIZE;
		spd.partial[i].offset = 0;
		spd.partial[i].private = (unsigned long)ref;
		spd.nr_pages++;
		*ppos += PAGE_SIZE;

		entries = FUNC6(iter->trace_buffer->buffer, iter->cpu_file);
	}

	FUNC13(iter->cpu_file);
	spd.nr_pages = i;

	/* did we read anything? */
	if (!spd.nr_pages) {
		if (ret)
			goto out;

		ret = -EAGAIN;
		if ((file->f_flags & O_NONBLOCK) || (flags & SPLICE_F_NONBLOCK))
			goto out;

		ret = FUNC15(iter, iter->tr->buffer_percent);
		if (ret)
			goto out;

		goto again;
	}

	ret = FUNC11(pipe, &spd);
out:
	FUNC10(&spd);

	return ret;
}