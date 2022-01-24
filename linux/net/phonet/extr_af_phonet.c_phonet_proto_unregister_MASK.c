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
struct phonet_protocol {int /*<<< orphan*/  prot; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct phonet_protocol const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct phonet_protocol const** proto_tab ; 
 int /*<<< orphan*/  proto_tab_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(unsigned int protocol,
			const struct phonet_protocol *pp)
{
	FUNC2(&proto_tab_lock);
	FUNC0(proto_tab[protocol] != pp);
	FUNC1(proto_tab[protocol], NULL);
	FUNC3(&proto_tab_lock);
	FUNC5();
	FUNC4(pp->prot);
}