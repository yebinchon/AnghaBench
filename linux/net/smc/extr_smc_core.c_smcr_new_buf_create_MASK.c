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
struct smc_link_group {struct smc_link* lnk; } ;
struct smc_link {int /*<<< orphan*/  roce_pd; int /*<<< orphan*/  smcibdev; } ;
struct smc_buf_desc {int len; void* cpu_addr; TYPE_1__* sgt; int /*<<< orphan*/  pages; int /*<<< orphan*/  order; } ;
struct TYPE_2__ {int /*<<< orphan*/  sgl; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EAGAIN ; 
 int ENOMEM ; 
 struct smc_buf_desc* FUNC0 (int) ; 
 int GFP_KERNEL ; 
 int IB_ACCESS_LOCAL_WRITE ; 
 int IB_ACCESS_REMOTE_WRITE ; 
 size_t SMC_SINGLE_LINK ; 
 int __GFP_COMP ; 
 int __GFP_NOMEMALLOC ; 
 int __GFP_NORETRY ; 
 int __GFP_NOWARN ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct smc_buf_desc*) ; 
 struct smc_buf_desc* FUNC4 (int,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct smc_link_group*,int,struct smc_buf_desc*) ; 
 int FUNC9 (int /*<<< orphan*/ ,struct smc_buf_desc*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,struct smc_buf_desc*) ; 

__attribute__((used)) static struct smc_buf_desc *FUNC11(struct smc_link_group *lgr,
						bool is_rmb, int bufsize)
{
	struct smc_buf_desc *buf_desc;
	struct smc_link *lnk;
	int rc;

	/* try to alloc a new buffer */
	buf_desc = FUNC4(sizeof(*buf_desc), GFP_KERNEL);
	if (!buf_desc)
		return FUNC0(-ENOMEM);

	buf_desc->order = FUNC2(bufsize);
	buf_desc->pages = FUNC1(GFP_KERNEL | __GFP_NOWARN |
				      __GFP_NOMEMALLOC | __GFP_COMP |
				      __GFP_NORETRY | __GFP_ZERO,
				      buf_desc->order);
	if (!buf_desc->pages) {
		FUNC3(buf_desc);
		return FUNC0(-EAGAIN);
	}
	buf_desc->cpu_addr = (void *)FUNC5(buf_desc->pages);

	/* build the sg table from the pages */
	lnk = &lgr->lnk[SMC_SINGLE_LINK];
	rc = FUNC6(&buf_desc->sgt[SMC_SINGLE_LINK], 1,
			    GFP_KERNEL);
	if (rc) {
		FUNC8(lgr, is_rmb, buf_desc);
		return FUNC0(rc);
	}
	FUNC7(buf_desc->sgt[SMC_SINGLE_LINK].sgl,
		   buf_desc->cpu_addr, bufsize);

	/* map sg table to DMA address */
	rc = FUNC9(lnk->smcibdev, buf_desc,
			       is_rmb ? DMA_FROM_DEVICE : DMA_TO_DEVICE);
	/* SMC protocol depends on mapping to one DMA address only */
	if (rc != 1)  {
		FUNC8(lgr, is_rmb, buf_desc);
		return FUNC0(-EAGAIN);
	}

	/* create a new memory region for the RMB */
	if (is_rmb) {
		rc = FUNC10(lnk->roce_pd,
					      IB_ACCESS_REMOTE_WRITE |
					      IB_ACCESS_LOCAL_WRITE,
					      buf_desc);
		if (rc) {
			FUNC8(lgr, is_rmb, buf_desc);
			return FUNC0(rc);
		}
	}

	buf_desc->len = bufsize;
	return buf_desc;
}