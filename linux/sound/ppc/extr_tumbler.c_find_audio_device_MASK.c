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
 struct device_node* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct device_node* FUNC1 (struct device_node*,struct device_node*) ; 
 char* FUNC2 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 scalar_t__ FUNC4 (char const*,char const*) ; 

__attribute__((used)) static struct device_node *FUNC5(const char *name)
{
	struct device_node *gpiop;
	struct device_node *np;
  
	gpiop = FUNC0(NULL, "gpio");
	if (! gpiop)
		return NULL;
  
	for (np = FUNC1(gpiop, NULL); np;
			np = FUNC1(gpiop, np)) {
		const char *property = FUNC2(np, "audio-gpio", NULL);
		if (property && FUNC4(property, name) == 0)
			break;
	}  
	FUNC3(gpiop);
	return np;
}