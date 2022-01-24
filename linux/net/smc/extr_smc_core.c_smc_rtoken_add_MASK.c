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
typedef  scalar_t__ u64 ;
typedef  scalar_t__ u32 ;
struct smc_link_group {TYPE_1__** rtokens; int /*<<< orphan*/  rtokens_used_mask; } ;
typedef  int /*<<< orphan*/  __be64 ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {scalar_t__ rkey; scalar_t__ dma_addr; } ;

/* Variables and functions */
 int SMC_RMBS_PER_LGR_MAX ; 
 size_t SMC_SINGLE_LINK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct smc_link_group*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 

int FUNC4(struct smc_link_group *lgr, __be64 nw_vaddr, __be32 nw_rkey)
{
	u64 dma_addr = FUNC0(nw_vaddr);
	u32 rkey = FUNC1(nw_rkey);
	int i;

	for (i = 0; i < SMC_RMBS_PER_LGR_MAX; i++) {
		if ((lgr->rtokens[i][SMC_SINGLE_LINK].rkey == rkey) &&
		    (lgr->rtokens[i][SMC_SINGLE_LINK].dma_addr == dma_addr) &&
		    FUNC3(i, lgr->rtokens_used_mask)) {
			/* already in list */
			return i;
		}
	}
	i = FUNC2(lgr);
	if (i < 0)
		return i;
	lgr->rtokens[i][SMC_SINGLE_LINK].rkey = rkey;
	lgr->rtokens[i][SMC_SINGLE_LINK].dma_addr = dma_addr;
	return i;
}