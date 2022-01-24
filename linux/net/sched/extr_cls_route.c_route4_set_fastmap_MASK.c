#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct route4_head {TYPE_1__* fastmap; } ;
struct route4_filter {int dummy; } ;
struct TYPE_2__ {int iif; struct route4_filter* filter; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  fastmap_lock ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct route4_head *head, u32 id, int iif,
		   struct route4_filter *f)
{
	int h = FUNC0(id, iif);

	/* fastmap updates must look atomic to aling id, iff, filter */
	FUNC1(&fastmap_lock);
	head->fastmap[h].id = id;
	head->fastmap[h].iif = iif;
	head->fastmap[h].filter = f;
	FUNC2(&fastmap_lock);
}