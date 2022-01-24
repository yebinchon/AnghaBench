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
struct splice_pipe_desc {unsigned int nr_pages_max; void* partial; void* pages; } ;
struct pipe_inode_info {int /*<<< orphan*/  buffers; } ;
struct partial_page {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int PIPE_DEF_BUFFERS ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (unsigned int,int,int /*<<< orphan*/ ) ; 

int FUNC3(const struct pipe_inode_info *pipe, struct splice_pipe_desc *spd)
{
	unsigned int buffers = FUNC0(pipe->buffers);

	spd->nr_pages_max = buffers;
	if (buffers <= PIPE_DEF_BUFFERS)
		return 0;

	spd->pages = FUNC2(buffers, sizeof(struct page *), GFP_KERNEL);
	spd->partial = FUNC2(buffers, sizeof(struct partial_page),
				     GFP_KERNEL);

	if (spd->pages && spd->partial)
		return 0;

	FUNC1(spd->pages);
	FUNC1(spd->partial);
	return -ENOMEM;
}