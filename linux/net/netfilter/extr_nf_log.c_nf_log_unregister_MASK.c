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
typedef  struct nf_logger {size_t type; } const nf_logger ;

/* Variables and functions */
 int NFPROTO_NUMPROTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** loggers ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nf_log_mutex ; 
 struct nf_logger const* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(struct nf_logger *logger)
{
	const struct nf_logger *log;
	int i;

	FUNC1(&nf_log_mutex);
	for (i = 0; i < NFPROTO_NUMPROTO; i++) {
		log = FUNC3(loggers[i][logger->type]);
		if (log == logger)
			FUNC0(loggers[i][logger->type], NULL);
	}
	FUNC2(&nf_log_mutex);
	FUNC4();
}