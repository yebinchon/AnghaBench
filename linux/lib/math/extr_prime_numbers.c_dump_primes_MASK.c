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
struct primes {int /*<<< orphan*/  sz; int /*<<< orphan*/ * primes; int /*<<< orphan*/  last; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  primes ; 
 struct primes* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(void)
{
	const struct primes *p;
	char *buf;

	buf = FUNC3(PAGE_SIZE, GFP_KERNEL);

	FUNC6();
	p = FUNC5(primes);

	if (buf)
		FUNC1(true, buf, p->primes, p->sz);
	FUNC4("primes.{last=%lu, .sz=%lu, .primes[]=...x%lx} = %s",
		p->last, p->sz, p->primes[FUNC0(p->sz) - 1], buf);

	FUNC7();

	FUNC2(buf);
}