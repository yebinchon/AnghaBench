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
struct fei_attr {int /*<<< orphan*/  list; int /*<<< orphan*/  kp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fei_attr*) ; 
 int /*<<< orphan*/  FUNC1 (struct fei_attr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct fei_attr *attr)
{
	FUNC1(attr);
	FUNC3(&attr->kp);
	FUNC2(&attr->list);
	FUNC0(attr);
}