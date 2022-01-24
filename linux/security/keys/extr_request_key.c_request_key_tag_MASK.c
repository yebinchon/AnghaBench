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
struct key_type {int dummy; } ;
struct key_tag {int dummy; } ;
struct key {int dummy; } ;

/* Variables and functions */
 struct key* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct key*) ; 
 int /*<<< orphan*/  KEY_ALLOC_IN_QUOTA ; 
 int /*<<< orphan*/  FUNC2 (struct key*) ; 
 struct key* FUNC3 (struct key_type*,char const*,struct key_tag*,char const*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (char const*) ; 
 int FUNC5 (struct key*,int) ; 

struct key *FUNC6(struct key_type *type,
			    const char *description,
			    struct key_tag *domain_tag,
			    const char *callout_info)
{
	struct key *key;
	size_t callout_len = 0;
	int ret;

	if (callout_info)
		callout_len = FUNC4(callout_info);
	key = FUNC3(type, description, domain_tag,
				   callout_info, callout_len,
				   NULL, NULL, KEY_ALLOC_IN_QUOTA);
	if (!FUNC1(key)) {
		ret = FUNC5(key, false);
		if (ret < 0) {
			FUNC2(key);
			return FUNC0(ret);
		}
	}
	return key;
}