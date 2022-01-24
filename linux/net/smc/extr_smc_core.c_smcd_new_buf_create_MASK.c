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
struct smcd_cdc_msg {int dummy; } ;
struct smc_link_group {int dummy; } ;
struct smc_buf_desc {int len; void* cpu_addr; int /*<<< orphan*/  pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct smc_buf_desc* FUNC0 (int /*<<< orphan*/ ) ; 
 int GFP_KERNEL ; 
 scalar_t__ SMCD_DMBE_SIZES ; 
 int __GFP_NOMEMALLOC ; 
 int __GFP_NORETRY ; 
 int __GFP_NOWARN ; 
 int /*<<< orphan*/  FUNC1 (struct smc_buf_desc*) ; 
 void* FUNC2 (int,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (struct smc_link_group*,int,struct smc_buf_desc*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 

__attribute__((used)) static struct smc_buf_desc *FUNC6(struct smc_link_group *lgr,
						bool is_dmb, int bufsize)
{
	struct smc_buf_desc *buf_desc;
	int rc;

	if (FUNC3(bufsize) > SMCD_DMBE_SIZES)
		return FUNC0(-EAGAIN);

	/* try to alloc a new DMB */
	buf_desc = FUNC2(sizeof(*buf_desc), GFP_KERNEL);
	if (!buf_desc)
		return FUNC0(-ENOMEM);
	if (is_dmb) {
		rc = FUNC4(lgr, bufsize, buf_desc);
		if (rc) {
			FUNC1(buf_desc);
			return FUNC0(-EAGAIN);
		}
		buf_desc->pages = FUNC5(buf_desc->cpu_addr);
		/* CDC header stored in buf. So, pretend it was smaller */
		buf_desc->len = bufsize - sizeof(struct smcd_cdc_msg);
	} else {
		buf_desc->cpu_addr = FUNC2(bufsize, GFP_KERNEL |
					     __GFP_NOWARN | __GFP_NORETRY |
					     __GFP_NOMEMALLOC);
		if (!buf_desc->cpu_addr) {
			FUNC1(buf_desc);
			return FUNC0(-EAGAIN);
		}
		buf_desc->len = bufsize;
	}
	return buf_desc;
}