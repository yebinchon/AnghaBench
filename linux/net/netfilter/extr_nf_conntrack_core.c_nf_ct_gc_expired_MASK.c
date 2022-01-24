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
struct TYPE_2__ {int /*<<< orphan*/  use; } ;
struct nf_conn {TYPE_1__ ct_general; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC2 (struct nf_conn*) ; 
 scalar_t__ FUNC3 (struct nf_conn*) ; 

__attribute__((used)) static void FUNC4(struct nf_conn *ct)
{
	if (!FUNC0(&ct->ct_general.use))
		return;

	if (FUNC3(ct))
		FUNC1(ct);

	FUNC2(ct);
}