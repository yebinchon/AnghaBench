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
struct tracepoint {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct tracepoint* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct tracepoint*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 struct tracepoint* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct tracepoint *FUNC4(char *name)
{
	struct tracepoint *tp;

	tp = FUNC3(sizeof(*tp), GFP_KERNEL);
	if (!tp)
		return FUNC0(-ENOMEM);

	tp->name = FUNC2(name, GFP_KERNEL);
	if (!tp->name) {
		FUNC1(tp);
		return FUNC0(-ENOMEM);
	}

	return tp;
}