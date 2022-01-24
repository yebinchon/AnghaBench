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
typedef  union iwreq_data {int dummy; } iwreq_data ;
struct net_device {int dummy; } ;
struct iw_thrspy {int /*<<< orphan*/  low; } ;
struct iw_spy_data {int /*<<< orphan*/  spy_thr_low; } ;
struct iw_request_info {int dummy; } ;
struct iw_quality {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 struct iw_spy_data* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int FUNC2(struct net_device *	dev,
			  struct iw_request_info *info,
			  union iwreq_data *	wrqu,
			  char *		extra)
{
	struct iw_spy_data *	spydata = FUNC0(dev);
	struct iw_thrspy *	threshold = (struct iw_thrspy *) extra;

	/* Make sure driver is not buggy or using the old API */
	if (!spydata)
		return -EOPNOTSUPP;

	/* Just do it */
	FUNC1(&(threshold->low), &(spydata->spy_thr_low),
	       2 * sizeof(struct iw_quality));

	return 0;
}