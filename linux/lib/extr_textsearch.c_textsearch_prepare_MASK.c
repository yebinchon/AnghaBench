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
struct ts_ops {int /*<<< orphan*/  owner; struct ts_config* (* init ) (void const*,unsigned int,int /*<<< orphan*/ ,int) ;} ;
struct ts_config {struct ts_ops* ops; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 struct ts_config* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct ts_config*) ; 
 int FUNC2 (struct ts_config*) ; 
 int TS_AUTOLOAD ; 
 struct ts_ops* FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 struct ts_config* FUNC6 (void const*,unsigned int,int /*<<< orphan*/ ,int) ; 

struct ts_config *FUNC7(const char *algo, const void *pattern,
				     unsigned int len, gfp_t gfp_mask, int flags)
{
	int err = -ENOENT;
	struct ts_config *conf;
	struct ts_ops *ops;
	
	if (len == 0)
		return FUNC0(-EINVAL);

	ops = FUNC3(algo);
#ifdef CONFIG_MODULES
	/*
	 * Why not always autoload you may ask. Some users are
	 * in a situation where requesting a module may deadlock,
	 * especially when the module is located on a NFS mount.
	 */
	if (ops == NULL && flags & TS_AUTOLOAD) {
		request_module("ts_%s", algo);
		ops = lookup_ts_algo(algo);
	}
#endif

	if (ops == NULL)
		goto errout;

	conf = ops->init(pattern, len, gfp_mask, flags);
	if (FUNC1(conf)) {
		err = FUNC2(conf);
		goto errout;
	}

	conf->ops = ops;
	return conf;

errout:
	if (ops)
		FUNC4(ops->owner);
		
	return FUNC0(err);
}