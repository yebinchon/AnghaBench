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
struct smc_link {int /*<<< orphan*/  llc_delete_rkey_mutex; scalar_t__ llc_delete_rkey_rc; int /*<<< orphan*/  llc_delete_rkey; } ;
struct smc_buf_desc {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  SMC_LLC_WAIT_TIME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct smc_link*,struct smc_buf_desc*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC5(struct smc_link *link,
			   struct smc_buf_desc *rmb_desc)
{
	int rc;

	FUNC0(&link->llc_delete_rkey_mutex);
	FUNC2(&link->llc_delete_rkey);
	rc = FUNC3(link, rmb_desc);
	if (rc)
		goto out;
	/* receive DELETE RKEY response from server over RoCE fabric */
	rc = FUNC4(&link->llc_delete_rkey,
						       SMC_LLC_WAIT_TIME);
	if (rc <= 0 || link->llc_delete_rkey_rc)
		rc = -EFAULT;
	else
		rc = 0;
out:
	FUNC1(&link->llc_delete_rkey_mutex);
	return rc;
}