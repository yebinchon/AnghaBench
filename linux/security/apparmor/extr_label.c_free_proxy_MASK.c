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
struct aa_proxy {int /*<<< orphan*/  label; } ;
struct aa_label {int dummy; } ;

/* Variables and functions */
 scalar_t__ PROXY_POISON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct aa_label*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct aa_proxy*) ; 
 int /*<<< orphan*/  FUNC3 (struct aa_proxy*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct aa_proxy *proxy)
{
	if (proxy) {
		/* p->label will not updated any more as p is dead */
		FUNC1(FUNC4(proxy->label, true));
		FUNC3(proxy, 0, sizeof(*proxy));
		FUNC0(proxy->label, (struct aa_label *)PROXY_POISON);
		FUNC2(proxy);
	}
}