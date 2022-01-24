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
typedef  int /*<<< orphan*/  u32 ;
struct xdp_exception_ctx {int dummy; } ;
struct datarec {int dropped; } ;

/* Variables and functions */
 struct datarec* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  exception_cnt ; 

int FUNC1(struct xdp_exception_ctx *ctx)
{
	struct datarec *rec;
	u32 key = 0;

	rec = FUNC0(&exception_cnt, &key);
	if (!rec)
		return 1;
	rec->dropped += 1;

	return 0;
}