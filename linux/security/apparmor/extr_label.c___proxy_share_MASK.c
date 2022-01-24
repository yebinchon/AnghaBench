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
struct aa_proxy {int dummy; } ;
struct aa_label {struct aa_proxy* proxy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct aa_label*,struct aa_label*) ; 
 struct aa_proxy* FUNC1 (struct aa_proxy*) ; 
 int /*<<< orphan*/  FUNC2 (struct aa_proxy*) ; 

__attribute__((used)) static void FUNC3(struct aa_label *old, struct aa_label *new)
{
	struct aa_proxy *proxy = new->proxy;

	new->proxy = FUNC1(old->proxy);
	FUNC0(old, new);
	FUNC2(proxy);
}