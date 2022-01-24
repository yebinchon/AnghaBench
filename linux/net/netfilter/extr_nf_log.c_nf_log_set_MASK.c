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
struct nf_logger {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * nf_loggers; } ;
struct net {TYPE_1__ nf; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int EOPNOTSUPP ; 
 size_t NFPROTO_UNSPEC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nf_log_mutex ; 
 struct nf_logger* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct nf_logger const*) ; 

int FUNC5(struct net *net, u_int8_t pf, const struct nf_logger *logger)
{
	const struct nf_logger *log;

	if (pf == NFPROTO_UNSPEC || pf >= FUNC0(net->nf.nf_loggers))
		return -EOPNOTSUPP;

	FUNC1(&nf_log_mutex);
	log = FUNC3(net->nf.nf_loggers[pf]);
	if (log == NULL)
		FUNC4(net->nf.nf_loggers[pf], logger);

	FUNC2(&nf_log_mutex);

	return 0;
}