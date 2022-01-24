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
struct xt_mtchk_param {int /*<<< orphan*/  family; struct net* net; } ;
struct xt_hashlimit_htable {int dummy; } ;
struct net {int dummy; } ;
struct hashlimit_cfg3 {scalar_t__ gc_interval; scalar_t__ expire; int srcmask; int dstmask; int mode; int avg; scalar_t__ interval; int burst; } ;

/* Variables and functions */
 int EINVAL ; 
 int ERANGE ; 
 int /*<<< orphan*/  NFPROTO_IPV4 ; 
 int U32_MAX ; 
 int XT_HASHLIMIT_ALL ; 
 int XT_HASHLIMIT_BYTES ; 
 int XT_HASHLIMIT_RATE_MATCH ; 
 int /*<<< orphan*/  hashlimit_mutex ; 
 int FUNC0 (struct net*,struct hashlimit_cfg3*,char const*,int /*<<< orphan*/ ,struct xt_hashlimit_htable**,int) ; 
 struct xt_hashlimit_htable* FUNC1 (struct net*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (int,int) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(const struct xt_mtchk_param *par,
				     struct xt_hashlimit_htable **hinfo,
				     struct hashlimit_cfg3 *cfg,
				     const char *name, int revision)
{
	struct net *net = par->net;
	int ret;

	if (cfg->gc_interval == 0 || cfg->expire == 0)
		return -EINVAL;
	if (par->family == NFPROTO_IPV4) {
		if (cfg->srcmask > 32 || cfg->dstmask > 32)
			return -EINVAL;
	} else {
		if (cfg->srcmask > 128 || cfg->dstmask > 128)
			return -EINVAL;
	}

	if (cfg->mode & ~XT_HASHLIMIT_ALL) {
		FUNC4("Unknown mode mask %X, kernel too old?\n",
				    cfg->mode);
		return -EINVAL;
	}

	/* Check for overflow. */
	if (revision >= 3 && cfg->mode & XT_HASHLIMIT_RATE_MATCH) {
		if (cfg->avg == 0 || cfg->avg > U32_MAX) {
			FUNC4("invalid rate\n");
			return -ERANGE;
		}

		if (cfg->interval == 0) {
			FUNC4("invalid interval\n");
			return -EINVAL;
		}
	} else if (cfg->mode & XT_HASHLIMIT_BYTES) {
		if (FUNC6(cfg->avg) == 0) {
			FUNC4("overflow, rate too high: %llu\n",
					    cfg->avg);
			return -EINVAL;
		}
	} else if (cfg->burst == 0 ||
		   FUNC5(cfg->avg * cfg->burst, revision) <
		   FUNC5(cfg->avg, revision)) {
		FUNC4("overflow, try lower: %llu/%llu\n",
				    cfg->avg, cfg->burst);
		return -ERANGE;
	}

	FUNC2(&hashlimit_mutex);
	*hinfo = FUNC1(net, name, par->family);
	if (*hinfo == NULL) {
		ret = FUNC0(net, cfg, name, par->family,
				    hinfo, revision);
		if (ret < 0) {
			FUNC3(&hashlimit_mutex);
			return ret;
		}
	}
	FUNC3(&hashlimit_mutex);

	return 0;
}