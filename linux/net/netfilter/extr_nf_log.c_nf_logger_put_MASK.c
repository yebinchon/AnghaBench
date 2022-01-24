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
struct nf_logger {int /*<<< orphan*/  me; } ;
typedef  enum nf_log_type { ____Placeholder_nf_log_type } nf_log_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int NFPROTO_INET ; 
 int NFPROTO_IPV4 ; 
 int NFPROTO_IPV6 ; 
 int /*<<< orphan*/ *** loggers ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct nf_logger* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(int pf, enum nf_log_type type)
{
	struct nf_logger *logger;

	if (pf == NFPROTO_INET) {
		FUNC5(NFPROTO_IPV4, type);
		FUNC5(NFPROTO_IPV6, type);
		return;
	}

	FUNC0(loggers[pf][type] == NULL);

	FUNC3();
	logger = FUNC2(loggers[pf][type]);
	FUNC1(logger->me);
	FUNC4();
}