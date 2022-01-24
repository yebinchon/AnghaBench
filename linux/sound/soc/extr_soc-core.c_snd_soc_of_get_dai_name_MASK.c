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
struct of_phandle_args {int /*<<< orphan*/  np; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct device_node*,char*,char*,int /*<<< orphan*/ ,struct of_phandle_args*) ; 
 int FUNC2 (struct of_phandle_args*,char const**) ; 

int FUNC3(struct device_node *of_node,
			    const char **dai_name)
{
	struct of_phandle_args args;
	int ret;

	ret = FUNC1(of_node, "sound-dai",
					 "#sound-dai-cells", 0, &args);
	if (ret)
		return ret;

	ret = FUNC2(&args, dai_name);

	FUNC0(args.np);

	return ret;
}