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
struct nfit_test_resource {int dummy; } ;
typedef  int /*<<< orphan*/  resource_size_t ;

/* Variables and functions */
 struct nfit_test_resource* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

struct nfit_test_resource *FUNC3(resource_size_t resource)
{
	struct nfit_test_resource *res;

	FUNC1();
	res = FUNC0(resource);
	FUNC2();

	return res;
}