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
struct o2nm_cluster {unsigned int cl_idle_timeout_ms; unsigned int cl_keepalive_delay_ms; } ;
struct config_item {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ML_NOTICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char const*,size_t,unsigned int*) ; 
 struct o2nm_cluster* FUNC3 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC4(struct config_item *item,
	const char *page, size_t count)
{
	struct o2nm_cluster *cluster = FUNC3(item);
	ssize_t ret;
	unsigned int val;

	ret =  FUNC2(page, count, &val);

	if (ret > 0) {
		if (cluster->cl_idle_timeout_ms != val
			&& FUNC1()) {
			FUNC0(ML_NOTICE,
			     "o2net: cannot change idle timeout after "
			     "the first peer has agreed to it."
			     "  %d connected peers\n",
			     FUNC1());
			ret = -EINVAL;
		} else if (val <= cluster->cl_keepalive_delay_ms) {
			FUNC0(ML_NOTICE, "o2net: idle timeout must be larger "
			     "than keepalive delay\n");
			ret = -EINVAL;
		} else {
			cluster->cl_idle_timeout_ms = val;
		}
	}

	return ret;
}