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
struct ovl_config {char* redirect_mode; char* upperdir; char* lowerdir; char* workdir; int default_permissions; int index; int nfs_export; int metacopy; int redirect_follow; int redirect_dir; int /*<<< orphan*/  xino; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MAX_OPT_ARGS ; 
#define  OPT_DEFAULT_PERMISSIONS 141 
#define  OPT_INDEX_OFF 140 
#define  OPT_INDEX_ON 139 
#define  OPT_LOWERDIR 138 
#define  OPT_METACOPY_OFF 137 
#define  OPT_METACOPY_ON 136 
#define  OPT_NFS_EXPORT_OFF 135 
#define  OPT_NFS_EXPORT_ON 134 
#define  OPT_REDIRECT_DIR 133 
#define  OPT_UPPERDIR 132 
#define  OPT_WORKDIR 131 
#define  OPT_XINO_AUTO 130 
#define  OPT_XINO_OFF 129 
#define  OPT_XINO_ON 128 
 int /*<<< orphan*/  OVL_XINO_AUTO ; 
 int /*<<< orphan*/  OVL_XINO_OFF ; 
 int /*<<< orphan*/  OVL_XINO_ON ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC4 (char**) ; 
 int FUNC5 (struct ovl_config*,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  ovl_tokens ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

__attribute__((used)) static int FUNC9(char *opt, struct ovl_config *config)
{
	char *p;
	int err;
	bool metacopy_opt = false, redirect_opt = false;

	config->redirect_mode = FUNC1(FUNC6(), GFP_KERNEL);
	if (!config->redirect_mode)
		return -ENOMEM;

	while ((p = FUNC4(&opt)) != NULL) {
		int token;
		substring_t args[MAX_OPT_ARGS];

		if (!*p)
			continue;

		token = FUNC3(p, ovl_tokens, args);
		switch (token) {
		case OPT_UPPERDIR:
			FUNC0(config->upperdir);
			config->upperdir = FUNC2(&args[0]);
			if (!config->upperdir)
				return -ENOMEM;
			break;

		case OPT_LOWERDIR:
			FUNC0(config->lowerdir);
			config->lowerdir = FUNC2(&args[0]);
			if (!config->lowerdir)
				return -ENOMEM;
			break;

		case OPT_WORKDIR:
			FUNC0(config->workdir);
			config->workdir = FUNC2(&args[0]);
			if (!config->workdir)
				return -ENOMEM;
			break;

		case OPT_DEFAULT_PERMISSIONS:
			config->default_permissions = true;
			break;

		case OPT_REDIRECT_DIR:
			FUNC0(config->redirect_mode);
			config->redirect_mode = FUNC2(&args[0]);
			if (!config->redirect_mode)
				return -ENOMEM;
			redirect_opt = true;
			break;

		case OPT_INDEX_ON:
			config->index = true;
			break;

		case OPT_INDEX_OFF:
			config->index = false;
			break;

		case OPT_NFS_EXPORT_ON:
			config->nfs_export = true;
			break;

		case OPT_NFS_EXPORT_OFF:
			config->nfs_export = false;
			break;

		case OPT_XINO_ON:
			config->xino = OVL_XINO_ON;
			break;

		case OPT_XINO_OFF:
			config->xino = OVL_XINO_OFF;
			break;

		case OPT_XINO_AUTO:
			config->xino = OVL_XINO_AUTO;
			break;

		case OPT_METACOPY_ON:
			config->metacopy = true;
			metacopy_opt = true;
			break;

		case OPT_METACOPY_OFF:
			config->metacopy = false;
			break;

		default:
			FUNC7("overlayfs: unrecognized mount option \"%s\" or missing value\n", p);
			return -EINVAL;
		}
	}

	/* Workdir is useless in non-upper mount */
	if (!config->upperdir && config->workdir) {
		FUNC8("overlayfs: option \"workdir=%s\" is useless in a non-upper mount, ignore\n",
			config->workdir);
		FUNC0(config->workdir);
		config->workdir = NULL;
	}

	err = FUNC5(config, config->redirect_mode);
	if (err)
		return err;

	/*
	 * This is to make the logic below simpler.  It doesn't make any other
	 * difference, since config->redirect_dir is only used for upper.
	 */
	if (!config->upperdir && config->redirect_follow)
		config->redirect_dir = true;

	/* Resolve metacopy -> redirect_dir dependency */
	if (config->metacopy && !config->redirect_dir) {
		if (metacopy_opt && redirect_opt) {
			FUNC7("overlayfs: conflicting options: metacopy=on,redirect_dir=%s\n",
			       config->redirect_mode);
			return -EINVAL;
		}
		if (redirect_opt) {
			/*
			 * There was an explicit redirect_dir=... that resulted
			 * in this conflict.
			 */
			FUNC8("overlayfs: disabling metacopy due to redirect_dir=%s\n",
				config->redirect_mode);
			config->metacopy = false;
		} else {
			/* Automatically enable redirect otherwise. */
			config->redirect_follow = config->redirect_dir = true;
		}
	}

	return 0;
}