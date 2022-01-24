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

/* Variables and functions */
 int EOVERFLOW ; 
 int UINT_MAX ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  masq_dev_notifier ; 
 int /*<<< orphan*/  masq_inet_notifier ; 
 int /*<<< orphan*/  masq_mutex ; 
 int masq_refcnt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(void)
{
	int ret = 0;

	FUNC1(&masq_mutex);
	if (FUNC0(masq_refcnt == UINT_MAX)) {
		ret = -EOVERFLOW;
		goto out_unlock;
	}

	/* check if the notifier was already set */
	if (++masq_refcnt > 1)
		goto out_unlock;

	/* Register for device down reports */
	ret = FUNC5(&masq_dev_notifier);
	if (ret)
		goto err_dec;
	/* Register IP address change reports */
	ret = FUNC4(&masq_inet_notifier);
	if (ret)
		goto err_unregister;

	ret = FUNC3();
	if (ret)
		goto err_unreg_inet;

	FUNC2(&masq_mutex);
	return ret;
err_unreg_inet:
	FUNC6(&masq_inet_notifier);
err_unregister:
	FUNC7(&masq_dev_notifier);
err_dec:
	masq_refcnt--;
out_unlock:
	FUNC2(&masq_mutex);
	return ret;
}