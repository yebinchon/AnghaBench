#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tomoyo_profile {int /*<<< orphan*/ * pref; struct tomoyo_path_info const* comment; } ;
typedef  struct tomoyo_path_info const tomoyo_path_info ;
struct TYPE_3__ {TYPE_2__* ns; } ;
struct tomoyo_io_buffer {char* write_buf; TYPE_1__ w; } ;
struct TYPE_4__ {int /*<<< orphan*/  profile_version; } ;
typedef  int /*<<< orphan*/  DEFINE_SPINLOCK ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 unsigned int TOMOYO_MAX_PREF ; 
 unsigned int FUNC0 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,char*,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char*,char) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 struct tomoyo_profile* FUNC6 (TYPE_2__*,unsigned int) ; 
 struct tomoyo_path_info const* FUNC7 (char*) ; 
 int /*<<< orphan*/ * tomoyo_pref_keywords ; 
 int /*<<< orphan*/  FUNC8 (struct tomoyo_path_info const*) ; 
 int FUNC9 (char*,char*,struct tomoyo_profile*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct tomoyo_io_buffer *head)
{
	char *data = head->write_buf;
	unsigned int i;
	char *cp;
	struct tomoyo_profile *profile;

	if (FUNC3(data, "PROFILE_VERSION=%u", &head->w.ns->profile_version)
	    == 1)
		return 0;
	i = FUNC0(data, &cp, 10);
	if (*cp != '-')
		return -EINVAL;
	data = cp + 1;
	profile = FUNC6(head->w.ns, i);
	if (!profile)
		return -EINVAL;
	cp = FUNC4(data, '=');
	if (!cp)
		return -EINVAL;
	*cp++ = '\0';
	if (!FUNC5(data, "COMMENT")) {
		static DEFINE_SPINLOCK(lock);
		const struct tomoyo_path_info *new_comment
			= FUNC7(cp);
		const struct tomoyo_path_info *old_comment;

		if (!new_comment)
			return -ENOMEM;
		FUNC1(&lock);
		old_comment = profile->comment;
		profile->comment = new_comment;
		FUNC2(&lock);
		FUNC8(old_comment);
		return 0;
	}
	if (!FUNC5(data, "PREFERENCE")) {
		for (i = 0; i < TOMOYO_MAX_PREF; i++)
			FUNC10(&profile->pref[i], cp,
					tomoyo_pref_keywords[i]);
		return 0;
	}
	return FUNC9(data, cp, profile);
}