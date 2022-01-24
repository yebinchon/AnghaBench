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
struct aa_label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AA_MAY_CREATE ; 
 int /*<<< orphan*/  OP_CREATE ; 
 int /*<<< orphan*/  FUNC1 (struct aa_label*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct aa_label* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct aa_label*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (struct aa_label*) ; 

__attribute__((used)) static int FUNC8(int family, int type, int protocol, int kern)
{
	struct aa_label *label;
	int error = 0;

	FUNC0(FUNC6());

	label = FUNC3();
	if (!(kern || FUNC7(label)))
		error = FUNC2(family,
				  FUNC4(label, family, type, protocol),
				  FUNC1(label, OP_CREATE, AA_MAY_CREATE,
					     family, type, protocol));
	FUNC5(label);

	return error;
}