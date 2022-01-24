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
struct reiserfs_jh {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct reiserfs_jh* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nr_reiserfs_jh ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static struct reiserfs_jh *FUNC3(void)
{
	struct reiserfs_jh *jh;
	while (1) {
		jh = FUNC1(sizeof(*jh), GFP_NOFS);
		if (jh) {
			FUNC0(&nr_reiserfs_jh);
			return jh;
		}
		FUNC2();
	}
}