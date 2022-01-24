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

/* Variables and functions */
 struct device_node* FUNC0 (struct device_node*) ; 
 struct device_node* FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct device_node *top,
				struct device_node *ep,
				struct simple_dai_props *props)
{
	struct device_node *port	= FUNC0(ep);
	struct device_node *ports	= FUNC0(port);
	struct device_node *node	= FUNC1(ep);

	FUNC3(top,	"mclk-fs", &props->mclk_fs);
	FUNC3(ports,	"mclk-fs", &props->mclk_fs);
	FUNC3(port,	"mclk-fs", &props->mclk_fs);
	FUNC3(ep,	"mclk-fs", &props->mclk_fs);

	FUNC2(port);
	FUNC2(ports);
	FUNC2(node);
}