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
struct cld_upcall {int /*<<< orphan*/  cu_list; struct cld_net* cu_net; } ;
struct cld_net {int /*<<< orphan*/  cn_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cld_upcall*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct cld_upcall *victim)
{
	struct cld_net *cn = victim->cu_net;

	FUNC2(&cn->cn_lock);
	FUNC1(&victim->cu_list);
	FUNC3(&cn->cn_lock);
	FUNC0(victim);
}