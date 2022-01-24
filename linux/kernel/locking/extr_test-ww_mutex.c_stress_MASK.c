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
struct ww_mutex {int dummy; } ;
struct stress {int nlocks; int /*<<< orphan*/  work; scalar_t__ timeout; struct ww_mutex* locks; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void (*) (struct work_struct*)) ; 
 unsigned int STRESS_INORDER ; 
 unsigned int STRESS_ONE ; 
 unsigned int STRESS_REORDER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct ww_mutex*) ; 
 struct stress* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct ww_mutex* FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void FUNC6 (struct work_struct*) ; 
 void FUNC7 (struct work_struct*) ; 
 void FUNC8 (struct work_struct*) ; 
 int /*<<< orphan*/  wq ; 
 int /*<<< orphan*/  ww_class ; 
 int /*<<< orphan*/  FUNC9 (struct ww_mutex*) ; 
 int /*<<< orphan*/  FUNC10 (struct ww_mutex*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(int nlocks, int nthreads, unsigned int flags)
{
	struct ww_mutex *locks;
	int n;

	locks = FUNC4(nlocks, sizeof(*locks), GFP_KERNEL);
	if (!locks)
		return -ENOMEM;

	for (n = 0; n < nlocks; n++)
		FUNC10(&locks[n], &ww_class);

	for (n = 0; nthreads; n++) {
		struct stress *stress;
		void (*fn)(struct work_struct *work);

		fn = NULL;
		switch (n & 3) {
		case 0:
			if (flags & STRESS_INORDER)
				fn = stress_inorder_work;
			break;
		case 1:
			if (flags & STRESS_REORDER)
				fn = stress_reorder_work;
			break;
		case 2:
			if (flags & STRESS_ONE)
				fn = stress_one_work;
			break;
		}

		if (!fn)
			continue;

		stress = FUNC3(sizeof(*stress), GFP_KERNEL);
		if (!stress)
			break;

		FUNC0(&stress->work, fn);
		stress->locks = locks;
		stress->nlocks = nlocks;
		stress->timeout = jiffies + 2*HZ;

		FUNC5(wq, &stress->work);
		nthreads--;
	}

	FUNC1(wq);

	for (n = 0; n < nlocks; n++)
		FUNC9(&locks[n]);
	FUNC2(locks);

	return 0;
}