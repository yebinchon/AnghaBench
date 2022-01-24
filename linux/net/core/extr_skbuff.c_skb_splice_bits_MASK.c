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
struct splice_pipe_desc {int nr_pages_max; scalar_t__ nr_pages; int /*<<< orphan*/  spd_release; int /*<<< orphan*/ * ops; struct partial_page* partial; struct page** pages; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct pipe_inode_info {int dummy; } ;
struct partial_page {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int MAX_SKB_FRAGS ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct pipe_inode_info*,unsigned int*,unsigned int*,struct splice_pipe_desc*,struct sock*) ; 
 int /*<<< orphan*/  nosteal_pipe_buf_ops ; 
 int /*<<< orphan*/  sock_spd_release ; 
 int FUNC1 (struct pipe_inode_info*,struct splice_pipe_desc*) ; 

int FUNC2(struct sk_buff *skb, struct sock *sk, unsigned int offset,
		    struct pipe_inode_info *pipe, unsigned int tlen,
		    unsigned int flags)
{
	struct partial_page partial[MAX_SKB_FRAGS];
	struct page *pages[MAX_SKB_FRAGS];
	struct splice_pipe_desc spd = {
		.pages = pages,
		.partial = partial,
		.nr_pages_max = MAX_SKB_FRAGS,
		.ops = &nosteal_pipe_buf_ops,
		.spd_release = sock_spd_release,
	};
	int ret = 0;

	FUNC0(skb, pipe, &offset, &tlen, &spd, sk);

	if (spd.nr_pages)
		ret = FUNC1(pipe, &spd);

	return ret;
}