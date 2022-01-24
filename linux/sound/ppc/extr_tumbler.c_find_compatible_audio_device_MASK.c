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
struct device_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device_node*,char const*) ; 
 struct device_node* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct device_node* FUNC2 (struct device_node*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 

__attribute__((used)) static struct device_node *FUNC4(const char *name)
{
	struct device_node *gpiop;
	struct device_node *np;
  
	gpiop = FUNC1(NULL, "gpio");
	if (!gpiop)
		return NULL;
  
	for (np = FUNC2(gpiop, NULL); np;
			np = FUNC2(gpiop, np)) {
		if (FUNC0(np, name))
			break;
	}  
	FUNC3(gpiop);
	return np;
}