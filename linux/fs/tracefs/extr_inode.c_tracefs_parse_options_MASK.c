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
typedef  int /*<<< orphan*/  substring_t ;
struct tracefs_mount_opts {int mode; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; } ;
typedef  int /*<<< orphan*/  kuid_t ;
typedef  int /*<<< orphan*/  kgid_t ;

/* Variables and functions */
 int EINVAL ; 
 int MAX_OPT_ARGS ; 
#define  Opt_gid 130 
#define  Opt_mode 129 
#define  Opt_uid 128 
 int S_IALLUGO ; 
 int TRACEFS_DEFAULT_MODE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC7 (char**,char*) ; 
 int /*<<< orphan*/  tokens ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(char *data, struct tracefs_mount_opts *opts)
{
	substring_t args[MAX_OPT_ARGS];
	int option;
	int token;
	kuid_t uid;
	kgid_t gid;
	char *p;

	opts->mode = TRACEFS_DEFAULT_MODE;

	while ((p = FUNC7(&data, ",")) != NULL) {
		if (!*p)
			continue;

		token = FUNC6(p, tokens, args);
		switch (token) {
		case Opt_uid:
			if (FUNC4(&args[0], &option))
				return -EINVAL;
			uid = FUNC3(FUNC0(), option);
			if (!FUNC8(uid))
				return -EINVAL;
			opts->uid = uid;
			break;
		case Opt_gid:
			if (FUNC4(&args[0], &option))
				return -EINVAL;
			gid = FUNC2(FUNC0(), option);
			if (!FUNC1(gid))
				return -EINVAL;
			opts->gid = gid;
			break;
		case Opt_mode:
			if (FUNC5(&args[0], &option))
				return -EINVAL;
			opts->mode = option & S_IALLUGO;
			break;
		/*
		 * We might like to report bad mount options here;
		 * but traditionally tracefs has ignored all mount options
		 */
		}
	}

	return 0;
}