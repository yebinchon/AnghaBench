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
struct request_sock_ops {int /*<<< orphan*/ * slab; int /*<<< orphan*/ * slab_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct request_sock_ops *rsk_prot)
{
	if (!rsk_prot)
		return;
	FUNC0(rsk_prot->slab_name);
	rsk_prot->slab_name = NULL;
	FUNC1(rsk_prot->slab);
	rsk_prot->slab = NULL;
}