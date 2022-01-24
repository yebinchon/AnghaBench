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
struct smc_link {scalar_t__ llc_confirm_rkey_rc; int /*<<< orphan*/  llc_confirm_rkey; } ;
struct smc_buf_desc {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  SMC_LLC_WAIT_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct smc_link*,struct smc_buf_desc*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC3(struct smc_link *link,
			    struct smc_buf_desc *rmb_desc)
{
	int rc;

	/* protected by mutex smc_create_lgr_pending */
	FUNC0(&link->llc_confirm_rkey);
	rc = FUNC1(link, rmb_desc);
	if (rc)
		return rc;
	/* receive CONFIRM RKEY response from server over RoCE fabric */
	rc = FUNC2(&link->llc_confirm_rkey,
						       SMC_LLC_WAIT_TIME);
	if (rc <= 0 || link->llc_confirm_rkey_rc)
		return -EFAULT;
	return 0;
}