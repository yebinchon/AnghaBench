#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct io_context {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_3__ {struct io_context* io_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static inline struct io_context *FUNC4(gfp_t gfp_mask, int node)
{
	FUNC0(FUNC2());
	if (FUNC3(!current->io_context))
		FUNC1(current, gfp_mask, node);
	return current->io_context;
}