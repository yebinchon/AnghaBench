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
struct fs_context {int /*<<< orphan*/  security; } ;

/* Variables and functions */
 int FUNC0 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC1 (char*,char) ; 
 size_t FUNC2 (char*) ; 
 char* FUNC3 (char**,char*) ; 
 int FUNC4 (struct fs_context*,char*,char*,size_t) ; 

int FUNC5(struct fs_context *fc, void *data)
{
	char *options = data, *key;
	int ret = 0;

	if (!options)
		return 0;

	ret = FUNC0(options, &fc->security);
	if (ret)
		return ret;

	while ((key = FUNC3(&options, ",")) != NULL) {
		if (*key) {
			size_t v_len = 0;
			char *value = FUNC1(key, '=');

			if (value) {
				if (value == key)
					continue;
				*value++ = 0;
				v_len = FUNC2(value);
			}
			ret = FUNC4(fc, key, value, v_len);
			if (ret < 0)
				break;
		}
	}

	return ret;
}