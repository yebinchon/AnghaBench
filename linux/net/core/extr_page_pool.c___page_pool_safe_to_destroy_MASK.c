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
struct page_pool {int dummy; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct page_pool*) ; 

__attribute__((used)) static bool FUNC2(struct page_pool *pool)
{
	s32 inflight = FUNC1(pool);

	/* The distance should not be able to become negative */
	FUNC0(inflight < 0, "Negative(%d) inflight packet-pages", inflight);

	return (inflight == 0);
}