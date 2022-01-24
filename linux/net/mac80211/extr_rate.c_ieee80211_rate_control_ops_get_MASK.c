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
struct rate_control_ops {int dummy; } ;

/* Variables and functions */
 char const* CONFIG_MAC80211_RC_DEFAULT ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 char const* ieee80211_default_rc_algo ; 
 struct rate_control_ops* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static const struct rate_control_ops *
FUNC4(const char *name)
{
	const struct rate_control_ops *ops;
	const char *alg_name;

	FUNC1(THIS_MODULE);
	if (!name)
		alg_name = ieee80211_default_rc_algo;
	else
		alg_name = name;

	ops = FUNC0(alg_name);
	if (!ops && name)
		/* try default if specific alg requested but not found */
		ops = FUNC0(ieee80211_default_rc_algo);

	/* Note: check for > 0 is intentional to avoid clang warning */
	if (!ops && (FUNC3(CONFIG_MAC80211_RC_DEFAULT) > 0))
		/* try built-in one if specific alg requested but not found */
		ops = FUNC0(CONFIG_MAC80211_RC_DEFAULT);

	FUNC2(THIS_MODULE);

	return ops;
}