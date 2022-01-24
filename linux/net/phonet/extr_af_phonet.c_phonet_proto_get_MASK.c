#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct phonet_protocol {TYPE_1__* prot; } ;
struct TYPE_2__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 unsigned int PHONET_NPROTO ; 
 int /*<<< orphan*/ * proto_tab ; 
 struct phonet_protocol* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct phonet_protocol *FUNC4(unsigned int protocol)
{
	const struct phonet_protocol *pp;

	if (protocol >= PHONET_NPROTO)
		return NULL;

	FUNC1();
	pp = FUNC0(proto_tab[protocol]);
	if (pp && !FUNC3(pp->prot->owner))
		pp = NULL;
	FUNC2();

	return pp;
}