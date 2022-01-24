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
struct kobj_uevent_env {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t UUID_STRING_LEN ; 
 char* FUNC0 (char const*,char const*,char) ; 
 scalar_t__ FUNC1 (struct kobj_uevent_env*,char*,int,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct kobj_uevent_env*) ; 
 struct kobj_uevent_env* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static int FUNC5(const char *buf, size_t count,
			       struct kobj_uevent_env **ret_env)
{
	struct kobj_uevent_env *env = NULL;
	const char *next, *buf_end, *key;
	int key_len;
	int r = -EINVAL;

	if (count && (buf[count - 1] == '\n' || buf[count - 1] == '\0'))
		count--;

	if (!count)
		return -EINVAL;

	env = FUNC3(sizeof(*env), GFP_KERNEL);
	if (!env)
		return -ENOMEM;

	/* first arg is UUID */
	if (count < UUID_STRING_LEN || !FUNC4(buf) ||
	    FUNC1(env, "SYNTH_UUID=%.*s", UUID_STRING_LEN, buf))
		goto out;

	/*
	 * the rest are custom environment variables in KEY=VALUE
	 * format with ' ' delimiter between each KEY=VALUE pair
	 */
	next = buf + UUID_STRING_LEN;
	buf_end = buf + count - 1;

	while (next <= buf_end) {
		if (*next != ' ')
			goto out;

		/* skip the ' ', key must follow */
		key = ++next;
		if (key > buf_end)
			goto out;

		buf = next;
		next = FUNC0(buf, buf_end, '=');
		if (!next || next > buf_end || *next != '=')
			goto out;
		key_len = next - buf;

		/* skip the '=', value must follow */
		if (++next > buf_end)
			goto out;

		buf = next;
		next = FUNC0(buf, buf_end, ' ');
		if (!next)
			goto out;

		if (FUNC1(env, "SYNTH_ARG_%.*s=%.*s",
				   key_len, key, (int) (next - buf), buf))
			goto out;
	}

	r = 0;
out:
	if (r)
		FUNC2(env);
	else
		*ret_env = env;
	return r;
}