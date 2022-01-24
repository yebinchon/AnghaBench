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
struct ovl_config {int redirect_dir; int redirect_follow; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ ovl_redirect_always_follow ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

__attribute__((used)) static int FUNC2(struct ovl_config *config, const char *mode)
{
	if (FUNC1(mode, "on") == 0) {
		config->redirect_dir = true;
		/*
		 * Does not make sense to have redirect creation without
		 * redirect following.
		 */
		config->redirect_follow = true;
	} else if (FUNC1(mode, "follow") == 0) {
		config->redirect_follow = true;
	} else if (FUNC1(mode, "off") == 0) {
		if (ovl_redirect_always_follow)
			config->redirect_follow = true;
	} else if (FUNC1(mode, "nofollow") != 0) {
		FUNC0("overlayfs: bad mount option \"redirect_dir=%s\"\n",
		       mode);
		return -EINVAL;
	}

	return 0;
}