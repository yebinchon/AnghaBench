#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,void const*,unsigned int) ; 
 TYPE_1__* shash ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  tfm ; 

u32 FUNC5(u32 crc, const void *address, unsigned int length)
{
	FUNC1(shash, tfm);
	u32 ret, *ctx = (u32 *)FUNC4(shash);
	int err;

	shash->tfm = tfm;
	*ctx = crc;

	err = FUNC3(shash, address, length);
	FUNC0(err);

	ret = *ctx;
	FUNC2(ctx);
	return ret;
}