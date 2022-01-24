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
struct trace_iterator {int /*<<< orphan*/  mutex; int /*<<< orphan*/  cpu_file; int /*<<< orphan*/  seq; int /*<<< orphan*/  ent; TYPE_1__* trace; } ;
struct splice_pipe_desc {unsigned int nr_pages; int nr_pages_max; struct partial_page* partial; struct page** pages; int /*<<< orphan*/  spd_release; int /*<<< orphan*/ * ops; } ;
struct pipe_inode_info {int dummy; } ;
struct partial_page {int /*<<< orphan*/  len; scalar_t__ offset; } ;
struct page {int dummy; } ;
struct file {struct trace_iterator* private_data; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {int (* splice_read ) (struct trace_iterator*,struct file*,int /*<<< orphan*/ *,struct pipe_inode_info*,size_t,unsigned int) ;} ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PIPE_DEF_BUFFERS ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (struct pipe_inode_info*,struct splice_pipe_desc*) ; 
 int /*<<< orphan*/  FUNC6 (struct splice_pipe_desc*) ; 
 int FUNC7 (struct pipe_inode_info*,struct splice_pipe_desc*) ; 
 int FUNC8 (struct trace_iterator*,struct file*,int /*<<< orphan*/ *,struct pipe_inode_info*,size_t,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct trace_iterator*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 size_t FUNC17 (size_t,struct trace_iterator*) ; 
 int /*<<< orphan*/  tracing_pipe_buf_ops ; 
 int /*<<< orphan*/  tracing_spd_release_pipe ; 
 int FUNC18 (struct file*) ; 

__attribute__((used)) static ssize_t FUNC19(struct file *filp,
					loff_t *ppos,
					struct pipe_inode_info *pipe,
					size_t len,
					unsigned int flags)
{
	struct page *pages_def[PIPE_DEF_BUFFERS];
	struct partial_page partial_def[PIPE_DEF_BUFFERS];
	struct trace_iterator *iter = filp->private_data;
	struct splice_pipe_desc spd = {
		.pages		= pages_def,
		.partial	= partial_def,
		.nr_pages	= 0, /* This gets updated below. */
		.nr_pages_max	= PIPE_DEF_BUFFERS,
		.ops		= &tracing_pipe_buf_ops,
		.spd_release	= tracing_spd_release_pipe,
	};
	ssize_t ret;
	size_t rem;
	unsigned int i;

	if (FUNC5(pipe, &spd))
		return -ENOMEM;

	FUNC2(&iter->mutex);

	if (iter->trace->splice_read) {
		ret = iter->trace->splice_read(iter, filp,
					       ppos, pipe, len, flags);
		if (ret)
			goto out_err;
	}

	ret = FUNC18(filp);
	if (ret <= 0)
		goto out_err;

	if (!iter->ent && !FUNC13(iter)) {
		ret = -EFAULT;
		goto out_err;
	}

	FUNC11();
	FUNC9(iter->cpu_file);

	/* Fill as many pages as possible. */
	for (i = 0, rem = len; i < spd.nr_pages_max && rem; i++) {
		spd.pages[i] = FUNC1(GFP_KERNEL);
		if (!spd.pages[i])
			break;

		rem = FUNC17(rem, iter);

		/* Copy the data into the page, so we can start over. */
		ret = FUNC15(&iter->seq,
					  FUNC4(spd.pages[i]),
					  FUNC16(&iter->seq));
		if (ret < 0) {
			FUNC0(spd.pages[i]);
			break;
		}
		spd.partial[i].offset = 0;
		spd.partial[i].len = FUNC16(&iter->seq);

		FUNC14(&iter->seq);
	}

	FUNC10(iter->cpu_file);
	FUNC12();
	FUNC3(&iter->mutex);

	spd.nr_pages = i;

	if (i)
		ret = FUNC7(pipe, &spd);
	else
		ret = 0;
out:
	FUNC6(&spd);
	return ret;

out_err:
	FUNC3(&iter->mutex);
	goto out;
}