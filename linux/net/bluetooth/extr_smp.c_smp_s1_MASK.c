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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(const u8 k[16],
		  const u8 r1[16], const u8 r2[16], u8 _r[16])
{
	int err;

	/* Just least significant octets from r1 and r2 are considered */
	FUNC1(_r, r2, 8);
	FUNC1(_r + 8, r1, 8);

	err = FUNC2(k, _r);
	if (err)
		FUNC0("Encrypt data error");

	return err;
}