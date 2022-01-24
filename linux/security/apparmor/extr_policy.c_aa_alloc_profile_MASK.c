#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct aa_proxy {int dummy; } ;
struct TYPE_5__ {struct aa_profile** vec; int /*<<< orphan*/  flags; int /*<<< orphan*/  hname; struct aa_proxy* proxy; } ;
struct TYPE_4__ {int /*<<< orphan*/  hname; } ;
struct aa_profile {TYPE_2__ label; TYPE_1__ base; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_PROFILE ; 
 struct aa_proxy* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct aa_profile*) ; 
 int /*<<< orphan*/  FUNC2 (struct aa_proxy*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 struct aa_profile* FUNC5 (int,int /*<<< orphan*/ ) ; 

struct aa_profile *FUNC6(const char *hname, struct aa_proxy *proxy,
				    gfp_t gfp)
{
	struct aa_profile *profile;

	/* freed by free_profile - usually through aa_put_profile */
	profile = FUNC5(sizeof(*profile) + sizeof(struct aa_profile *) * 2,
			  gfp);
	if (!profile)
		return NULL;

	if (!FUNC4(&profile->base, NULL, hname, gfp))
		goto fail;
	if (!FUNC3(&profile->label, 1, gfp))
		goto fail;

	/* update being set needed by fs interface */
	if (!proxy) {
		proxy = FUNC0(&profile->label, gfp);
		if (!proxy)
			goto fail;
	} else
		FUNC2(proxy);
	profile->label.proxy = proxy;

	profile->label.hname = profile->base.hname;
	profile->label.flags |= FLAG_PROFILE;
	profile->label.vec[0] = profile;

	/* refcount released by caller */
	return profile;

fail:
	FUNC1(profile);

	return NULL;
}