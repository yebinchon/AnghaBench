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
struct simple_dai_props {int /*<<< orphan*/  mclk_fs; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  prop ;

/* Variables and functions */
 char* PREFIX ; 
 struct device_node* FUNC0 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 

__attribute__((used)) static void FUNC4(struct device_node *top,
				 struct device_node *cpu,
				 struct device_node *codec,
				 struct simple_dai_props *props,
				 char *prefix)
{
	struct device_node *node = FUNC0(cpu);
	char prop[128];

	FUNC3(prop, sizeof(prop), "%smclk-fs", PREFIX);
	FUNC2(top,	prop, &props->mclk_fs);

	FUNC3(prop, sizeof(prop), "%smclk-fs", prefix);
	FUNC2(node,	prop, &props->mclk_fs);
	FUNC2(cpu,	prop, &props->mclk_fs);
	FUNC2(codec,	prop, &props->mclk_fs);

	FUNC1(node);
}