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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct sw842_param {int olen; int out; } ;
typedef  int /*<<< orphan*/  __be64 ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sw842_param*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct sw842_param *p, u8 n)
{
	u64 v;
	int ret;

	if (n > p->olen)
		return -ENOSPC;

	ret = FUNC3(p, &v, n * 8);
	if (ret)
		return ret;

	switch (n) {
	case 2:
		FUNC4(FUNC0((u16)v), (__be16 *)p->out);
		break;
	case 4:
		FUNC4(FUNC1((u32)v), (__be32 *)p->out);
		break;
	case 8:
		FUNC4(FUNC2((u64)v), (__be64 *)p->out);
		break;
	default:
		return -EINVAL;
	}

	p->out += n;
	p->olen -= n;

	return 0;
}