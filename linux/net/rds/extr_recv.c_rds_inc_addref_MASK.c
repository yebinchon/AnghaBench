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
struct rds_incoming {int /*<<< orphan*/  i_refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct rds_incoming*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct rds_incoming *inc)
{
	FUNC0("addref inc %p ref %d\n", inc, FUNC2(&inc->i_refcount));
	FUNC1(&inc->i_refcount);
}