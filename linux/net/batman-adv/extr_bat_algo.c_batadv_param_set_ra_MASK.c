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
struct kernel_param {int dummy; } ;
struct batadv_algo_ops {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct batadv_algo_ops* FUNC0 (char*) ; 
 int FUNC1 (char*,struct kernel_param const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 size_t FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(const char *val, const struct kernel_param *kp)
{
	struct batadv_algo_ops *bat_algo_ops;
	char *algo_name = (char *)val;
	size_t name_len = FUNC3(algo_name);

	if (name_len > 0 && algo_name[name_len - 1] == '\n')
		algo_name[name_len - 1] = '\0';

	bat_algo_ops = FUNC0(algo_name);
	if (!bat_algo_ops) {
		FUNC2("Routing algorithm '%s' is not supported\n", algo_name);
		return -EINVAL;
	}

	return FUNC1(algo_name, kp);
}