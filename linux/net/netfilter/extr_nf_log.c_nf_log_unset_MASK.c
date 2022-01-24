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
struct nf_logger {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * nf_loggers; } ;
struct net {TYPE_1__ nf; } ;

/* Variables and functions */
 int NFPROTO_NUMPROTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nf_log_mutex ; 
 struct nf_logger* FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct net *net, const struct nf_logger *logger)
{
	int i;
	const struct nf_logger *log;

	FUNC1(&nf_log_mutex);
	for (i = 0; i < NFPROTO_NUMPROTO; i++) {
		log = FUNC3(net->nf.nf_loggers[i]);
		if (log == logger)
			FUNC0(net->nf.nf_loggers[i], NULL);
	}
	FUNC2(&nf_log_mutex);
}