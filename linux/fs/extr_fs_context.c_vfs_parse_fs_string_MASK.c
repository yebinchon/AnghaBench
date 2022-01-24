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
struct fs_parameter {char const* key; size_t size; int /*<<< orphan*/  string; int /*<<< orphan*/  type; } ;
struct fs_context {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  fs_value_is_string ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct fs_context*,struct fs_parameter*) ; 

int FUNC3(struct fs_context *fc, const char *key,
			const char *value, size_t v_size)
{
	int ret;

	struct fs_parameter param = {
		.key	= key,
		.type	= fs_value_is_string,
		.size	= v_size,
	};

	if (v_size > 0) {
		param.string = FUNC1(value, v_size, GFP_KERNEL);
		if (!param.string)
			return -ENOMEM;
	}

	ret = FUNC2(fc, &param);
	FUNC0(param.string);
	return ret;
}