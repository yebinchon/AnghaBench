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
struct sigqueue {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SIGQUEUE_PREALLOC ; 
 struct sigqueue* FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 

struct sigqueue *FUNC1(void)
{
	struct sigqueue *q = FUNC0(-1, current, GFP_KERNEL, 0);

	if (q)
		q->flags |= SIGQUEUE_PREALLOC;

	return q;
}