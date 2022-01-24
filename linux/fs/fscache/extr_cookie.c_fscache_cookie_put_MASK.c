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
struct fscache_cookie {struct fscache_cookie* parent; int /*<<< orphan*/  usage; } ;
typedef  enum fscache_cookie_trace { ____Placeholder_fscache_cookie_trace } fscache_cookie_trace ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct fscache_cookie*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int fscache_cookie_put_parent ; 
 int /*<<< orphan*/  FUNC4 (struct fscache_cookie*) ; 
 int /*<<< orphan*/  FUNC5 (struct fscache_cookie*) ; 
 int /*<<< orphan*/  FUNC6 (struct fscache_cookie*,int,int) ; 

void FUNC7(struct fscache_cookie *cookie,
			enum fscache_cookie_trace where)
{
	struct fscache_cookie *parent;
	int usage;

	FUNC1("%p", cookie);

	do {
		usage = FUNC3(&cookie->usage);
		FUNC6(cookie, where, usage);

		if (usage > 0)
			return;
		FUNC0(usage < 0);

		parent = cookie->parent;
		FUNC5(cookie);
		FUNC4(cookie);

		cookie = parent;
		where = fscache_cookie_put_parent;
	} while (cookie);

	FUNC2("");
}