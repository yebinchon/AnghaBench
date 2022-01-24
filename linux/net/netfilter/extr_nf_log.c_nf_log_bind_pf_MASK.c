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
typedef  size_t u_int8_t ;
struct nf_logger {int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/ * nf_loggers; } ;
struct net {TYPE_1__ nf; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/ * FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nf_log_mutex ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct nf_logger const*) ; 

int FUNC5(struct net *net, u_int8_t pf,
		   const struct nf_logger *logger)
{
	if (pf >= FUNC0(net->nf.nf_loggers))
		return -EINVAL;
	FUNC2(&nf_log_mutex);
	if (FUNC1(pf, logger->name) == NULL) {
		FUNC3(&nf_log_mutex);
		return -ENOENT;
	}
	FUNC4(net->nf.nf_loggers[pf], logger);
	FUNC3(&nf_log_mutex);
	return 0;
}