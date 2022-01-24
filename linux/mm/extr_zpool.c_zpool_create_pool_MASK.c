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
struct zpool_ops {scalar_t__ evict; } ;
struct zpool_driver {scalar_t__ shrink; int /*<<< orphan*/  (* create ) (char const*,int /*<<< orphan*/ ,struct zpool_ops const*,struct zpool*) ;} ;
struct zpool {int evictable; int /*<<< orphan*/  list; int /*<<< orphan*/  pool; struct zpool_ops const* ops; struct zpool_driver* driver; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct zpool*) ; 
 struct zpool* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pools_head ; 
 int /*<<< orphan*/  pools_lock ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const*,int /*<<< orphan*/ ,struct zpool_ops const*,struct zpool*) ; 
 struct zpool_driver* FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (struct zpool_driver*) ; 

struct zpool *FUNC11(const char *type, const char *name, gfp_t gfp,
		const struct zpool_ops *ops)
{
	struct zpool_driver *driver;
	struct zpool *zpool;

	FUNC3("creating pool type %s\n", type);

	driver = FUNC9(type);

	if (!driver) {
		FUNC5("zpool-%s", type);
		driver = FUNC9(type);
	}

	if (!driver) {
		FUNC4("no driver for type %s\n", type);
		return NULL;
	}

	zpool = FUNC1(sizeof(*zpool), gfp);
	if (!zpool) {
		FUNC4("couldn't create zpool - out of memory\n");
		FUNC10(driver);
		return NULL;
	}

	zpool->driver = driver;
	zpool->pool = driver->create(name, gfp, ops, zpool);
	zpool->ops = ops;
	zpool->evictable = driver->shrink && ops && ops->evict;

	if (!zpool->pool) {
		FUNC4("couldn't create %s pool\n", type);
		FUNC10(driver);
		FUNC0(zpool);
		return NULL;
	}

	FUNC3("created pool type %s\n", type);

	FUNC6(&pools_lock);
	FUNC2(&zpool->list, &pools_head);
	FUNC7(&pools_lock);

	return zpool;
}