#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int8_t ;
struct nf_logger {size_t type; } ;
struct TYPE_3__ {int /*<<< orphan*/  nf_loggers; } ;
struct TYPE_4__ {TYPE_1__ nf; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int EEXIST ; 
 int EINVAL ; 
 int NFPROTO_NUMPROTO ; 
 size_t NFPROTO_UNSPEC ; 
 TYPE_2__ init_net ; 
 int /*<<< orphan*/ ** loggers ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nf_log_mutex ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct nf_logger*) ; 

int FUNC5(u_int8_t pf, struct nf_logger *logger)
{
	int i;
	int ret = 0;

	if (pf >= FUNC0(init_net.nf.nf_loggers))
		return -EINVAL;

	FUNC1(&nf_log_mutex);

	if (pf == NFPROTO_UNSPEC) {
		for (i = NFPROTO_UNSPEC; i < NFPROTO_NUMPROTO; i++) {
			if (FUNC3(loggers[i][logger->type])) {
				ret = -EEXIST;
				goto unlock;
			}
		}
		for (i = NFPROTO_UNSPEC; i < NFPROTO_NUMPROTO; i++)
			FUNC4(loggers[i][logger->type], logger);
	} else {
		if (FUNC3(loggers[pf][logger->type])) {
			ret = -EEXIST;
			goto unlock;
		}
		FUNC4(loggers[pf][logger->type], logger);
	}

unlock:
	FUNC2(&nf_log_mutex);
	return ret;
}