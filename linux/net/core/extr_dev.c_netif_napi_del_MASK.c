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
struct napi_struct {scalar_t__ gro_bitmask; int /*<<< orphan*/  dev_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct napi_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct napi_struct*) ; 
 scalar_t__ FUNC4 (struct napi_struct*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(struct napi_struct *napi)
{
	FUNC2();
	if (FUNC4(napi))
		FUNC5();
	FUNC1(&napi->dev_list);
	FUNC3(napi);

	FUNC0(napi);
	napi->gro_bitmask = 0;
}