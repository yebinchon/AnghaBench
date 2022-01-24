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
 int ENOENT ; 
 int NFPROTO_INET ; 
 int NFPROTO_IPV4 ; 
 int NFPROTO_IPV6 ; 
 int /*<<< orphan*/ ** loggers ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 struct nf_logger* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(int pf, enum nf_log_type type)
{
	struct nf_logger *logger;
	int ret = -ENOENT;

	if (pf == NFPROTO_INET) {
		ret = FUNC7(NFPROTO_IPV4, type);
		if (ret < 0)
			return ret;

		ret = FUNC7(NFPROTO_IPV6, type);
		if (ret < 0) {
			FUNC0(NFPROTO_IPV4, type);
			return ret;
		}

		return 0;
	}

	if (FUNC1(loggers[pf][type]) == NULL)
		FUNC5("nf-logger-%u-%u", pf, type);

	FUNC3();
	logger = FUNC2(loggers[pf][type]);
	if (logger == NULL)
		goto out;

	if (FUNC6(logger->me))
		ret = 0;
out:
	FUNC4();
	return ret;
}