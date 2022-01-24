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
struct fs_context {TYPE_2__* ops; TYPE_1__* log; int /*<<< orphan*/  cred; int /*<<< orphan*/  user_ns; int /*<<< orphan*/  net_ns; int /*<<< orphan*/  fs_type; int /*<<< orphan*/ * security; int /*<<< orphan*/ * source; int /*<<< orphan*/ * s_fs_info; int /*<<< orphan*/ * fs_private; int /*<<< orphan*/  uapi_mutex; } ;
struct TYPE_4__ {int (* dup ) (struct fs_context*,struct fs_context*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  usage; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 struct fs_context* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct fs_context* FUNC5 (struct fs_context*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct fs_context*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (struct fs_context*,struct fs_context*) ; 
 int FUNC10 (struct fs_context*,struct fs_context*) ; 

struct fs_context *FUNC11(struct fs_context *src_fc)
{
	struct fs_context *fc;
	int ret;

	if (!src_fc->ops->dup)
		return FUNC0(-EOPNOTSUPP);

	fc = FUNC5(src_fc, sizeof(struct fs_context), GFP_KERNEL);
	if (!fc)
		return FUNC0(-ENOMEM);

	FUNC6(&fc->uapi_mutex);

	fc->fs_private	= NULL;
	fc->s_fs_info	= NULL;
	fc->source	= NULL;
	fc->security	= NULL;
	FUNC2(fc->fs_type);
	FUNC3(fc->net_ns);
	FUNC4(fc->user_ns);
	FUNC1(fc->cred);
	if (fc->log)
		FUNC8(&fc->log->usage);

	/* Can't call put until we've called ->dup */
	ret = fc->ops->dup(fc, src_fc);
	if (ret < 0)
		goto err_fc;

	ret = FUNC9(fc, src_fc);
	if (ret < 0)
		goto err_fc;
	return fc;

err_fc:
	FUNC7(fc);
	return FUNC0(ret);
}