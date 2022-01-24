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
struct metapage {int /*<<< orphan*/  wait; int /*<<< orphan*/ * log; scalar_t__ clsn; int /*<<< orphan*/ * data; scalar_t__ lsn; scalar_t__ lid; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct metapage* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  metapage_mempool ; 

__attribute__((used)) static inline struct metapage *FUNC2(gfp_t gfp_mask)
{
	struct metapage *mp = FUNC1(metapage_mempool, gfp_mask);

	if (mp) {
		mp->lid = 0;
		mp->lsn = 0;
		mp->data = NULL;
		mp->clsn = 0;
		mp->log = NULL;
		FUNC0(&mp->wait);
	}
	return mp;
}